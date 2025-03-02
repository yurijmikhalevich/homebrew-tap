class Rclip < Formula
  include Language::Python::Virtualenv

  desc "AI-Powered Command-Line Photo Search Tool"
  homepage "https://github.com/yurijmikhalevich/rclip"
  url "https://files.pythonhosted.org/packages/0d/5f/12b13a328eca9ac8e6c4f51613be482320a1bf808e069f331c87d161f1f1/rclip-2.0.2.tar.gz"
  sha256 "a1f02ba787fda4ca3c7328e2747a29e52ee08f2e77b676ab80d0bc20cabc33ce"
  license "MIT"

  if OS.linux?
    depends_on "patchelf" => :build # for rawpy
  end

  depends_on "rust" => :build # for safetensors
  depends_on "certifi"
  depends_on "libyaml"
  depends_on "numpy"
  depends_on "pillow"
  depends_on "python@3.12"
  depends_on "pytorch-python312@2.5.1"
  depends_on "sentencepiece"
  depends_on "torchvision-python312@0.20.1"

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/f2/4f/e1808dc01273379acc506d18f1504eb2d299bd4131743b9fc54d7be4df1e/charset_normalizer-3.4.0.tar.gz"
    sha256 "223217c3d4f82c3ac5e29032b3f1c2eb0fb591b72161f86d93f5719079dae93e"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/9d/db/3ef5bb276dae18d6ec2124224403d1d67bccdbefc17af4cc8f553e341ab1/filelock-3.16.1.tar.gz"
    sha256 "c249fbfcd5db47e5e2d6d62198e565475ee65e4831e2561c8e313fa7eb961435"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/a0/52/f16a068ebadae42526484c31f4398e62962504e5724a8ba5dc3409483df2/fsspec-2024.10.0.tar.gz"
    sha256 "eda2d8a4116d4f2429db8550f2457da57279247dd930bb12f821b58391359493"
  end

  resource "ftfy" do
    url "https://files.pythonhosted.org/packages/a5/d3/8650919bc3c7c6e90ee3fa7fd618bf373cbbe55dff043bd67353dbb20cd8/ftfy-6.3.1.tar.gz"
    sha256 "9b3c3d90f84fb267fe64d375a07b7f8912d817cf86009ae134aa03e1819506ec"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/4c/66/fa78b1cbcae512a30c2d4c702eba0e3a771ad7b304f85d5df0b339ad82f7/huggingface_hub-0.26.3.tar.gz"
    sha256 "90e1fe62ffc26757a073aaad618422b899ccf9447c2bba8c902a90bef5b42e1d"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/af/92/b3130cbbf5591acf9ade8708c365f3238046ac7cb8ccba6e81abccb0ccff/jinja2-3.1.5.tar.gz"
    sha256 "8fefff8dc3034e27bb80d67c671eb8a9bc424c0ef4c0826edbff304cceff43bb"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/b2/97/5d42485e71dfc078108a86d6de8fa46db44a1a9295e89c5d6d4a06e23a62/markupsafe-3.0.2.tar.gz"
    sha256 "ee55d3edf80167e48ea11a923c7386f4669df67d7994554387f84e7d8b0a2bf0"
  end

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/e0/47/dd32fa426cc72114383ac549964eecb20ecfd886d1e5ccf5340b55b02f57/mpmath-1.3.0.tar.gz"
    sha256 "7a28eb2a9774d00c7bc92411c19a89209d5da7c4c9a9e227be8330a23a25b91f"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/fd/1d/06475e1cd5264c0b870ea2cc6fdb3e37177c1e565c43f56ff17a10e3937f/networkx-3.4.2.tar.gz"
    sha256 "307c3669428c5362aab27c8a1260aa8f47c4e91d3891f48be0141738d8d053e1"
  end

  resource "open-clip-torch" do
    url "https://github.com/mlfoundations/open_clip/archive/refs/tags/v2.29.0.tar.gz"
    sha256 "f53a8850701a0a9499645b2849db2ec5cfbb7f388962212ff41adae22b821466"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d0/63/68dbb6eb2de9cb10ee4c9c14a0148804425e13c4fb20d61cce69f53106da/packaging-24.2.tar.gz"
    sha256 "c228a6dc5e932d346bc5739379109d49e8853dd8223571c7c5b55260edc0b97f"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/8e/5f/bd69653fbfb76cf8604468d3b4ec4c403197144c7bfe0e6a5fc9e02a07cb/regex-2024.11.6.tar.gz"
    sha256 "7ab159b063c52a0333c884e4679f8d7a85112ee3078fe3d9004b2dd875585519"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/cb/46/a1c56ed856c6ac3b1a8b37abe5be0cac53219367af1331e721b04d122577/safetensors-0.4.5.tar.gz"
    sha256 "d73de19682deabb02524b3d5d1f8b3aaba94c72f1bbfc7911b9b9d5d391c0310"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/ca/99/5a5b6f19ff9f083671ddf7b9632028436167cd3d33e11015754e41b249a4/sympy-1.13.1.tar.gz"
    sha256 "9cebf7e04ff162015ce31c9c6c9144daa34a93bd082f54fd8f12deca4f47515f"
  end

  resource "timm" do
    url "https://files.pythonhosted.org/packages/5b/53/33b596c79eb911586ca90e16d64fde9738ddd0d34273ae562ea664eacca7/timm-1.0.11.tar.gz"
    sha256 "a005f72b87e67ed30cdbf405a9ffd4e723360c780a43b1cefe266af8ecc9d151"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/a8/4b/29b4ef32e036bb34e4ab51796dd745cdba7ed47ad142a9f4a1eb8e0c744d/tqdm-4.67.1.tar.gz"
    sha256 "f8aef9c52c08c13a65f30ea34f4e5aac3fd1a34959879d7e59e63027286627f2"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/ed/63/22ba4ebfe7430b76388e7cd448d5478814d3032121827c12a2cc287e2260/urllib3-2.2.3.tar.gz"
    sha256 "e7d814a81dad81e6caf2ec9fdedb284ecc9c73076b62654547cc64ccdcae26e9"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      resource "rawpy" do
        url "https://files.pythonhosted.org/packages/87/75/610a34caf048aa87248f8393e70073610146f379fdda8194a988ba286d5b/rawpy-0.24.0-cp312-cp312-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "1097b10eed4027e5b50006548190602e1adba9c824526b45f7a37781cfa01818"
      end
    elsif Hardware::CPU.intel?
      resource "rawpy" do
        url "https://files.pythonhosted.org/packages/27/1c/59024e87c20b325e10b43e3b709929681a0ed23bda3885c7825927244fcc/rawpy-0.24.0-cp312-cp312-macosx_10_9_x86_64.whl", using: :nounzip
        sha256 "ed639b0dc91c3e85d6c39303a1523b7e1edc4f4b0381c376ed0ff99febb306e4"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "rawpy" do
        url "https://files.pythonhosted.org/packages/9c/c4/576853c0eea14d62a2776f683dae23c994572dfc2dcb47fd1a1473b7b18a/rawpy-0.24.0-cp312-cp312-manylinux_2_17_aarch64.manylinux2014_aarch64.whl", using: :nounzip
        sha256 "17a970fd8cdece57929d6e99ce64503f21b51c00ab132bad53065bd523154892"
      end
    elsif Hardware::CPU.intel?
      resource "rawpy" do
        url "https://files.pythonhosted.org/packages/fe/35/5d6765359ce6e06fe0aee5a3e4e731cfe08c056df093d97c292bdc02132a/rawpy-0.24.0-cp312-cp312-manylinux_2_17_x86_64.manylinux2014_x86_64.whl", using: :nounzip
        sha256 "a12fc4e6c5879b88c6937abb9f3f6670dd34d126b4a770ad4566e9f747e306fb"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  end

  def install
    # Fix for ZIP timestamp issue with files having dates before 1980
    ENV["SOURCE_DATE_EPOCH"] = "315532800" # 1980-01-01

    virtualenv_install_with_resources without: "rawpy"

    resource("rawpy").stage do
      wheel = Dir["*.whl"].first
      valid_wheel = wheel.sub(/^.*--/, "")
      File.rename(wheel, valid_wheel)
      system "python3.12", "-m", "pip", "--python=#{libexec}/bin/python", "install", "--no-deps", valid_wheel
    end

    if OS.linux?
      rawpy_so = Dir[libexec/"lib/python3.12/site-packages/rawpy/_rawpy*.so"].first
      raise "rawpy shared object not found" unless rawpy_so

      system "patchelf", "--set-rpath", "$ORIGIN/../rawpy.libs", rawpy_so

      libraw_so = Dir[libexec/"lib/python3.12/site-packages/rawpy.libs/libraw*.so.*"].first
      raise "libraw shared object not found" unless libraw_so

      system "patchelf", "--set-rpath", "$ORIGIN", libraw_so
    end

    # link dependent virtualenvs to this one
    site_packages = Language::Python.site_packages("python3.12")
    paths = %w[pytorch-python312@2.5.1 torchvision-python312@0.20.1].map do |package_name|
      package = Formula[package_name].opt_libexec
      package/site_packages
    end
    (libexec/site_packages/"homebrew-deps.pth").write paths.join("\n")
  end

  test do
    output = shell_output("#{bin}/rclip cat")
    assert_match("score\tfilepath", output)
  end
end
