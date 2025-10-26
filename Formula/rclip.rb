class Rclip < Formula
  include Language::Python::Virtualenv

  desc "AI-Powered Command-Line Photo Search Tool"
  homepage "https://github.com/yurijmikhalevich/rclip"
  url "https://files.pythonhosted.org/packages/a3/79/f9f3fb0c4e76cf16dc3c6e6f93f72442c401273d8099507239143679c2b9/rclip-2.1.0.tar.gz"
  sha256 "50108ba27256fd44ed6e7f503d6fd370f29af415e96c7464b6fe55b4345d2cb6"
  license "MIT"

  bottle do
    root_url "https://github.com/yurijmikhalevich/homebrew-tap/releases/download/rclip-2.1.0"
    sha256 cellar: :any,                 arm64_sequoia: "463ab593336cb48447a57a6e0ef2ef3d0e0c7b728cf9f872a6f7f1e9daa0f692"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "67de7a46810377acc2955572ebfed611599ffa1df30e8da0a9d131c865ba6f15"
  end

  if OS.linux?
    depends_on "patchelf" => :build # for rawpy
  end

  depends_on "rust" => :build # for safetensors
  depends_on "certifi"
  depends_on "libheif"
  depends_on "libyaml"
  depends_on "numpy"
  depends_on "pillow"
  depends_on "python@3.12"
  depends_on "pytorch-python312@2.5.1"
  depends_on "sentencepiece"
  depends_on "torchvision-python312@0.20.1"

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/83/2d/5fd176ceb9b2fc619e63405525573493ca23441330fcdaee6bef9460e924/charset_normalizer-3.4.3.tar.gz"
    sha256 "6fce4b8500244f6fcb71465d4a4930d132ba9ab8e71a7859e6a5d59851068d14"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/40/bb/0ab3e58d22305b6f5440629d20683af28959bf793d98d11950e305c1c326/filelock-3.19.1.tar.gz"
    sha256 "66eda1888b0171c998b35be2bcc0f6d75c388a7ce20c3f3f37aa8e96c2dddf58"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/8b/02/0835e6ab9cfc03916fe3f78c0956cfcdb6ff2669ffa6651065d5ebf7fc98/fsspec-2025.7.0.tar.gz"
    sha256 "786120687ffa54b8283d942929540d8bc5ccfa820deb555a2b5d0ed2b737bf58"
  end

  resource "ftfy" do
    url "https://files.pythonhosted.org/packages/a5/d3/8650919bc3c7c6e90ee3fa7fd618bf373cbbe55dff043bd67353dbb20cd8/ftfy-6.3.1.tar.gz"
    sha256 "9b3c3d90f84fb267fe64d375a07b7f8912d817cf86009ae134aa03e1819506ec"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/7a/49/91010b59debc7c862a5fd426d343134dd9a68778dbe570234b6495a4e204/hf_xet-1.1.8.tar.gz"
    sha256 "62a0043e441753bbc446dcb5a3fe40a4d03f5fb9f13589ef1df9ab19252beb53"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/45/c9/bdbe19339f76d12985bc03572f330a01a93c04dffecaaea3061bdd7fb892/huggingface_hub-0.34.4.tar.gz"
    sha256 "a4228daa6fb001be3f4f4bdaf9a0db00e1739235702848df00885c9b5742c85c"
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
    url "https://github.com/mlfoundations/open_clip/archive/refs/tags/v3.1.0.tar.gz"
    sha256 "c89e5c844dc3db8842933bf4b661de66c014c14fff8b9b4ee59bf191fba929f6"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/a1/d4/1fc4078c65507b51b96ca8f8c3ba19e6a61c8253c72794544580a7b6c24d/packaging-25.0.tar.gz"
    sha256 "d443872c98d677bf60f6a1f2f8c1cb748e8fe762d2bf9d3148b5599295b0fc4f"
  end

  resource "pillow-heif" do
    url "https://files.pythonhosted.org/packages/64/65/77284daf2a8a2849b9040889bd8e1b845e693ed97973a28ba2122b8922ad/pillow_heif-1.1.1.tar.gz"
    sha256 "f60e8c8a8928556104cec4fff39d43caa1da105625bdb53b11ce3c89d09b6bde"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/0b/de/e13fa6dc61d78b30ba47481f99933a3b49a57779d625c392d8036770a60d/regex-2025.7.34.tar.gz"
    sha256 "9ead9765217afd04a86822dfcd4ed2747dfe426e887da413b15ff0ac2457e21a"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/ac/cc/738f3011628920e027a11754d9cae9abec1aed00f7ae860abbf843755233/safetensors-0.6.2.tar.gz"
    sha256 "43ff2aa0e6fa2dc3ea5524ac7ad93a9839256b8703761e76e2d0b2a3fa4f15d9"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/ca/99/5a5b6f19ff9f083671ddf7b9632028436167cd3d33e11015754e41b249a4/sympy-1.13.1.tar.gz"
    sha256 "9cebf7e04ff162015ce31c9c6c9144daa34a93bd082f54fd8f12deca4f47515f"
  end

  resource "timm" do
    url "https://files.pythonhosted.org/packages/1c/78/0789838cf20ba1cc09907914a008c1823d087132b48aa1ccde5e7934175a/timm-1.0.19.tar.gz"
    sha256 "6e71e1f67ac80c229d3a78ca58347090514c508aeba8f2e2eb5289eda86e9f43"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/a8/4b/29b4ef32e036bb34e4ab51796dd745cdba7ed47ad142a9f4a1eb8e0c744d/tqdm-4.67.1.tar.gz"
    sha256 "f8aef9c52c08c13a65f30ea34f4e5aac3fd1a34959879d7e59e63027286627f2"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/98/5a/da40306b885cc8c09109dc2e1abd358d5684b1425678151cdaed4731c822/typing_extensions-4.14.1.tar.gz"
    sha256 "38b39f4aeeab64884ce9f74c94263ef78f3c22467c8724005483154c26648d36"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/15/22/9ee70a2574a4f4599c47dd506532914ce044817c7752a79b6a51286319bc/urllib3-2.5.0.tar.gz"
    sha256 "3fc47733c7e419d4bc3f6b3dc2b4f890bb743906a30d56ba4a5bfa4bbff92760"
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
