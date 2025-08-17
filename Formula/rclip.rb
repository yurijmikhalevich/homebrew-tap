class Rclip < Formula
  include Language::Python::Virtualenv

  desc "AI-Powered Command-Line Photo Search Tool"
  homepage "https://github.com/yurijmikhalevich/rclip"
  url "https://files.pythonhosted.org/packages/90/66/6bddeb5c3a0e8e8c585d0a4404cfc82fe03e029b5ffa1e3c253bc2f53591/rclip-2.0.5.tar.gz"
  sha256 "f2b126f7c3443d864463f36f80b6989a4102b2edf16c007b12949a19b9875459"
  license "MIT"
  revision 1

  bottle do
    root_url "https://github.com/yurijmikhalevich/homebrew-tap/releases/download/rclip-2.0.5_1"
    sha256 cellar: :any,                 arm64_sequoia: "1c670c7d0f0c2fba77d44109f3d63b72df57c34cf61aff7d372ecf4f887834bc"
    sha256 cellar: :any,                 ventura:       "ce3f86d6f3df2a610b7241582f09c8f71f8d63be7a6358f0bc5411b76daafccb"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "df204d42a78343ae5521e0936c2b6f723c2a2652ecea5cc974a023e46a049ec1"
  end

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
    url "https://files.pythonhosted.org/packages/16/b0/572805e227f01586461c80e0fd25d65a2115599cc9dad142fee4b747c357/charset_normalizer-3.4.1.tar.gz"
    sha256 "44251f18cd68a75b56585dd00dae26183e102cd5e0f9f1466e6df5da2ed64ea3"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/0a/10/c23352565a6544bdc5353e0b15fc1c563352101f30e24bf500207a54df9a/filelock-3.18.0.tar.gz"
    sha256 "adbc88eabb99d2fec8c9c1b229b171f18afa655400173ddc653d5d01501fb9f2"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/45/d8/8425e6ba5fcec61a1d16e41b1b71d2bf9344f1fe48012c2b48b9620feae5/fsspec-2025.3.2.tar.gz"
    sha256 "e52c77ef398680bbd6a98c0e628fbc469491282981209907bbc8aea76a04fdc6"
  end

  resource "ftfy" do
    url "https://files.pythonhosted.org/packages/a5/d3/8650919bc3c7c6e90ee3fa7fd618bf373cbbe55dff043bd67353dbb20cd8/ftfy-6.3.1.tar.gz"
    sha256 "9b3c3d90f84fb267fe64d375a07b7f8912d817cf86009ae134aa03e1819506ec"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/df/22/8eb91736b1dcb83d879bd49050a09df29a57cc5cd9f38e48a4b1c45ee890/huggingface_hub-0.30.2.tar.gz"
    sha256 "9a7897c5b6fd9dad3168a794a8998d6378210f5b9688d0dfc180b1a228dc2466"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
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
    url "https://github.com/mlfoundations/open_clip/archive/refs/tags/v2.32.0.tar.gz"
    sha256 "6509bbafad7cd284639d922ee826a251c558b6307c506a012872e71423a7d53f"
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
    url "https://files.pythonhosted.org/packages/71/7e/2d5d6ee7b40c0682315367ec7475693d110f512922d582fef1bd4a63adc3/safetensors-0.5.3.tar.gz"
    sha256 "b6b0d6ecacec39a4fdd99cc19f4576f5219ce858e6fd8dbe7609df0b8dc56965"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/ca/99/5a5b6f19ff9f083671ddf7b9632028436167cd3d33e11015754e41b249a4/sympy-1.13.1.tar.gz"
    sha256 "9cebf7e04ff162015ce31c9c6c9144daa34a93bd082f54fd8f12deca4f47515f"
  end

  resource "timm" do
    url "https://files.pythonhosted.org/packages/bc/0c/66b0f9b4a4cb9ffdac7b52b17b37c7d3c4f75623b469e388b0c6d89b4e88/timm-1.0.15.tar.gz"
    sha256 "756a3bc30c96565f056e608a9b559daed904617eaadb6be536f96874879b1055"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/a8/4b/29b4ef32e036bb34e4ab51796dd745cdba7ed47ad142a9f4a1eb8e0c744d/tqdm-4.67.1.tar.gz"
    sha256 "f8aef9c52c08c13a65f30ea34f4e5aac3fd1a34959879d7e59e63027286627f2"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/37/23083fcd6e35492953e8d2aaaa68b860eb422b34627b13f2ce3eb6106061/typing_extensions-4.13.2.tar.gz"
    sha256 "e6c81219bd689f51865d9e372991c540bda33a0379d5573cddb9a3a23f7caaef"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/8a/78/16493d9c386d8e60e442a35feac5e00f0913c0f4b7c217c11e8ec2ff53e0/urllib3-2.4.0.tar.gz"
    sha256 "414bc6535b787febd7567804cc015fee39daab8ad86268f1310a9250697de466"
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
