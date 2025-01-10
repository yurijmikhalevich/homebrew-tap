class TorchvisionPython312AT0201 < Formula
  include Language::Python::Virtualenv

  desc "Datasets, transforms, and models for computer vision"
  homepage "https://github.com/pytorch/vision"
  url "https://github.com/pytorch/vision/archive/refs/tags/v0.20.1.tar.gz"
  sha256 "7e08c7f56e2c89859310e53d898f72bccc4987cd83e08cfd6303513da15a9e71"
  license "BSD-3-Clause"
  revision 7

  bottle do
    root_url "https://github.com/yurijmikhalevich/homebrew-tap/releases/download/torchvision-python312@0.20.1-0.20.1_7"
    sha256 cellar: :any,                 arm64_sequoia: "c814d9366dadf68ea5b2f6d42f4dc9daf2939c6fed989c41248c54bf14d2e97e"
    sha256 cellar: :any,                 ventura:       "68a09e62dca5f2eea6e4ed7c0e295986841ede7d09fc28a27d0e9bbcfb6521a4"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "30a41959686f4b968c4fcb332b107175f3411867adfce78cb7ba051eb6d466f4"
  end

  keg_only "it conflicts with the torchvision formula"

  depends_on "cmake" => :build
  depends_on "ninja" => :build
  depends_on "python@3.12" => [:build, :test]
  depends_on "abseil"
  depends_on "certifi"
  depends_on "jpeg-turbo"
  depends_on "libpng"
  depends_on "numpy"
  depends_on "pillow"
  depends_on "protobuf"
  depends_on "pytorch-python312@2.5.1"

  on_macos do
    depends_on "libomp"
  end

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"

    jpeg = Formula["jpeg-turbo"]
    inreplace "setup.py",
      'jpeg_found, jpeg_include_dir, jpeg_library_dir = find_library(header="jpeglib.h")',
      "jpeg_found, jpeg_include_dir, jpeg_library_dir = True, '#{jpeg.include}', '#{jpeg.lib}'"

    python3 = "python3.12"
    venv = virtualenv_create(libexec, python3)
    venv.pip_install resources

    # We depend on pytorch, but that's a separate formula, so install a `.pth` file to link them.
    # This needs to happen _before_ we try to install torchvision.
    # NOTE: This is an exception to our usual policy as building `pytorch` is complicated
    site_packages = Language::Python.site_packages(python3)
    pth_contents = "import site; site.addsitedir('#{Formula["pytorch-python312@2.5.1"].opt_libexec/site_packages}')\n"
    (venv.site_packages/"homebrew-pytorch.pth").write pth_contents

    venv.pip_install_and_link(buildpath, build_isolation: false)

    pkgshare.install "examples"
  end

  test do
    # test that C++ libraries are available
    # See also https://github.com/pytorch/vision/issues/2134#issuecomment-1793846900
    (testpath/"test.cpp").write <<~CPP
      #include <assert.h>
      #include <torch/script.h>
      #include <torch/torch.h>
      #include <torchvision/vision.h>
      #include <torchvision/ops/nms.h>

      int main() {
        auto& ops = torch::jit::getAllOperatorsFor(torch::jit::Symbol::fromQualString("torchvision::nms"));
        assert(ops.size() == 1);
      }
    CPP
    pytorch = Formula["pytorch-python312@2.5.1"]
    openmp_flags = if OS.mac?
      libomp = Formula["libomp"]
      %W[
        -Xpreprocessor -fopenmp
        -I#{libomp.opt_include}
        -L#{libomp.opt_lib} -lomp
      ]
    else
      %w[-fopenmp]
    end
    system ENV.cxx, "-std=c++17", "test.cpp", "-o", "test", *openmp_flags,
                    "-I#{pytorch.opt_include}",
                    "-I#{pytorch.opt_include}/torch/csrc/api/include",
                    "-I#{include}",
                    "-L#{pytorch.opt_lib}", "-ltorch", "-ltorch_cpu", "-lc10",
                    "-L#{lib}", *("-Wl,--no-as-needed" if OS.linux?), "-ltorchvision"

    ENV.prepend_path "LD_LIBRARY_PATH", pytorch.opt_lib if OS.linux?
    system "./test"

    # test that the `torchvision` Python module is available
    cp test_fixtures("test.png"), "test.png"
    system libexec/"bin/python", "-c", <<~PYTHON
      import torch
      import torchvision
      t = torchvision.io.read_image("test.png")
      assert isinstance(t, torch.Tensor)
    PYTHON
  end
end
