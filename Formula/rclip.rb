class Rclip < Formula
  include Language::Python::Virtualenv

  desc "AI-Powered Command-Line Photo Search Tool"
  homepage "https://github.com/yurijmikhalevich/rclip"
  url "https://files.pythonhosted.org/packages/d5/17/8ade50c18d68ec80cc7a969e16f702bd015a46c6a53e6393fbf3e5f7da49/rclip-1.7.2.tar.gz"
  sha256 "e07069f31dd09df0c054935dddf8c37c19292260c9369ebe243606ecc03be253"
  license "MIT"

  depends_on "rust" => :build # for safetensors
  depends_on "numpy"
  depends_on "pillow"
  depends_on "python-certifi"
  depends_on "python@3.11"
  depends_on "pytorch"
  depends_on "sentencepiece"
  depends_on "torchvision"

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/2a/53/cf0a48de1bdcf6ff6e1c9a023f5f523dfe303e4024f216feac64b6eb7f67/charset-normalizer-3.2.0.tar.gz"
    sha256 "3bb3d25a8e6c0aedd251753a79ae98a093c7e7b471faa3aa9a93a81431987ace"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/d5/71/bb1326535231229dd69a9dd2e338f6f54b2d57bd88fc4a52285c0ab8a5f6/filelock-3.12.4.tar.gz"
    sha256 "2e6f249f1f3654291606e046b09f1fd5eac39b360664c27f5aad072012f8bcbd"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/ca/2f/93a4a8eed0234a6b20a32c718ddd0ab712c66b4bda6ce4c3bcd51b279a66/fsspec-2023.9.1.tar.gz"
    sha256 "da8cfe39eeb65aaa69074d5e0e4bbc9b7ef72d69c0587a31cab981eefdb3da13"
  end

  resource "ftfy" do
    url "https://files.pythonhosted.org/packages/97/16/79c6e17bd3465f6498282dd23813846c68cd0989fe60bfef68bb1918d041/ftfy-6.1.1.tar.gz"
    sha256 "bfc2019f84fcd851419152320a6375604a0f1459c281b5b199b2cd0d2e727f8f"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/19/68/72790a7b45433ab70131548020b61765680f30b5881c6decebdb1ff808f8/huggingface_hub-0.17.1.tar.gz"
    sha256 "dd828d2a24ee6af86392042cc1052c482c053eb574864669f0cae4d29620e62c"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/7a/ff/75c28576a1d900e87eb6335b063fab47a8ef3c8b4d88524c4bf78f670cce/Jinja2-3.1.2.tar.gz"
    sha256 "31351a702a408a9e7595a8fc6150fc3f43bb6bf7e319770cbc0db9df9437e852"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/6d/7c/59a3248f411813f8ccba92a55feaac4bf360d29e2ff05ee7d8e1ef2d7dbf/MarkupSafe-2.1.3.tar.gz"
    sha256 "af598ed32d6ae86f1b747b82783958b1a4ab8f617b06fe68795c7f026abbdcad"
  end

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/e0/47/dd32fa426cc72114383ac549964eecb20ecfd886d1e5ccf5340b55b02f57/mpmath-1.3.0.tar.gz"
    sha256 "7a28eb2a9774d00c7bc92411c19a89209d5da7c4c9a9e227be8330a23a25b91f"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/fd/a1/47b974da1a73f063c158a1f4cc33ed0abf7c04f98a19050e80c533c31f0c/networkx-3.1.tar.gz"
    sha256 "de346335408f84de0eada6ff9fafafff9bcda11f0a0dfaa931133debb146ab61"
  end

  resource "open-clip-torch" do
    url "https://github.com/mlfoundations/open_clip/archive/refs/tags/v2.20.0.tar.gz"
    sha256 "7ba57638668c12a2765ef07337d8fe3e0442633f4fc83f85dd06fc7bc7eadb18"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/b9/6c/7c6658d258d7971c5eb0d9b69fa9265879ec9a9158031206d47800ae2213/packaging-23.1.tar.gz"
    sha256 "a392980d2b6cffa644431898be54b0045151319d1e7ec34f0cfed48767dd334f"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/55/5b/e3d951e34f8356e5feecacd12a8e3b258a1da6d9a03ad1770f28925f29bc/protobuf-3.20.3.tar.gz"
    sha256 "2e3427429c9cffebf259491be0af70189607f365c2f41c7c3764af6f337105f2"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/4f/1d/6998ba539616a4c8f58b07fd7c9b90c6b0f0c0ecbe8db69095a6079537a7/regex-2023.8.8.tar.gz"
    sha256 "fcbdc5f2b0f1cd0f6a56cdb46fe41d2cce1e644e3b68832f3eeebc5fb0f7712e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/ea/43/9911dc3ab9c8da3ef0ecf9c81cca132327f73beb22be9b03eaa9f3070d40/safetensors-0.3.3.tar.gz"
    sha256 "edb7072d788c4f929d0f5735d3a2fb51e5a27f833587828583b7f5747af1a2b8"
  end

  resource "sentencepiece" do
    url "https://files.pythonhosted.org/packages/d8/87/b37ebc960d0a85e10785a1a92d796edbd975840bee150a9ae3ba5d7a0250/sentencepiece-0.1.99.tar.gz"
    sha256 "189c48f5cb2949288f97ccdb97f0473098d9c3dcf5a3d99d4eabe719ec27297f"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/e5/57/3485a1a3dff51bfd691962768b14310dae452431754bfc091250be50dd29/sympy-1.12.tar.gz"
    sha256 "ebf595c8dac3e0fdc4152c51878b498396ec7f30e7a914d6071e674d49420fb8"
  end

  resource "timm" do
    url "https://files.pythonhosted.org/packages/b1/34/16fe39785085e0a0e2dd20b9d4cd9512a9840801c795a8e0f52a6bde5c00/timm-0.9.7.tar.gz"
    sha256 "2bfb1029e90b72e65eb9c75556169815f2e82257eaa1f6ebd623a4b4a52867a2"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/62/06/d5604a70d160f6a6ca5fd2ba25597c24abd5c5ca5f437263d177ac242308/tqdm-4.66.1.tar.gz"
    sha256 "d88e651f9db8d8551a62556d3cff9e3034274ca5d66e93197cf2490e2dcb69c7"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/3c/8b/0111dd7d6c1478bf83baa1cab85c686426c7a6274119aceb2bd9d35395ad/typing_extensions-4.7.1.tar.gz"
    sha256 "b75ddc264f0ba5615db7ba217daeb99701ad295353c45f9e95963337ceeeffb2"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/31/ab/46bec149bbd71a4467a3063ac22f4486ecd2ceb70ae8c70d5d8e4c2a7946/urllib3-2.0.4.tar.gz"
    sha256 "8d22f86aae8ef5e410d4f539fde9ce6b2113a001bb4d189e0aed70642d602b11"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/5e/5f/1e4bd82a9cc1f17b2c2361a2d876d4c38973a997003ba5eb400e8a932b6c/wcwidth-0.2.6.tar.gz"
    sha256 "a5220780a404dbe3353789870978e472cfe477761f06ee55077256e509b156d0"
  end

  def install
    virtualenv_install_with_resources

    # link dependent virtualenvs to this one
    site_packages = Language::Python.site_packages("python3.11")
    paths = %w[pytorch torchvision].map do |package_name|
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
