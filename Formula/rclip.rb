class Rclip < Formula
  include Language::Python::Virtualenv

  desc "AI-Powered Command-Line Photo Search Tool"
  homepage "https://github.com/yurijmikhalevich/rclip"
  url "https://files.pythonhosted.org/packages/0d/6c/dacedf2375e9bc5da136978a3ee7a9e55b17a4d91204e5f5b85ff4dea457/rclip-1.7.6.tar.gz"
  sha256 "862ecc0736bf181c1eb04db5ec43d598a813c3e1da8158c0e20b130319255aa5"
  license "MIT"

  bottle do
    root_url "https://ghcr.io/v2/yurijmikhalevich/tap"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a50c4a2033af8fb5d13aac9ab28dd683bcf892e14ec00b867846b6f314ac6810"
  end

  depends_on "rust" => :build # for safetensors
  depends_on "numpy"
  depends_on "pillow"
  depends_on "python-certifi"
  depends_on "python@3.11"
  depends_on "pytorch"
  depends_on "sentencepiece"
  depends_on "torchvision"

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/70/70/41905c80dcfe71b22fb06827b8eae65781783d4a14194bce79d16a013263/filelock-3.13.1.tar.gz"
    sha256 "521f5f56c50f8426f5e03ad3b281b490a87ef15bc6c526f168290f0c7148d44e"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/a4/f7/16ec1f92523165d10301cfa8cb83df0356dbe615d4ca5ed611a16f53e09a/fsspec-2023.10.0.tar.gz"
    sha256 "330c66757591df346ad3091a53bd907e15348c2ba17d63fd54f5c39c4457d2a5"
  end

  resource "ftfy" do
    url "https://files.pythonhosted.org/packages/97/16/79c6e17bd3465f6498282dd23813846c68cd0989fe60bfef68bb1918d041/ftfy-6.1.1.tar.gz"
    sha256 "bfc2019f84fcd851419152320a6375604a0f1459c281b5b199b2cd0d2e727f8f"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/64/74/c85a5c59888da14c9904dad8109cf1c744055ffde38a8fb830a1e3cf1d66/huggingface_hub-0.19.4.tar.gz"
    sha256 "176a4fc355a851c17550e7619488f383189727eab209534d7cef2114dae77b22"
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
    url "https://github.com/mlfoundations/open_clip/archive/refs/tags/v2.23.0.tar.gz"
    sha256 "d3dddbd2e7a90658487a77f4b1349be04e8cd62a28a6b100e4bfb960ab215dc8"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/fb/2b/9b9c33ffed44ee921d0967086d653047286054117d584f1b1a7c22ceaf7b/packaging-23.2.tar.gz"
    sha256 "048fb0e9405036518eaaf48a55953c750c11e1a1b68e0dd1a9d62ed0c092cfc5"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/59/5f/b2d00e6a08d97656a27832d4d146e03ffc46ae74b4699740674bea13a905/protobuf-4.25.1.tar.gz"
    sha256 "57d65074b4f5baa4ab5da1605c02be90ac20c8b40fb137d6a8df9f416b0d0ce2"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/6b/38/49d968981b5ec35dbc0f742f8219acab179fc1567d9c22444152f950cf0d/regex-2023.10.3.tar.gz"
    sha256 "3fef4f844d2290ee0ba57addcec17eec9e3df73f10a2748485dfd6a3a188cc0f"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/64/ae/978970755bfe0ce612fc32527d3ab2bf195f926f9d02eb63ba20823c16be/safetensors-0.4.0.tar.gz"
    sha256 "b985953c3cf11e942eac4317ef3db3da713e274109cf7cfb6076d877054f013e"
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
    url "https://files.pythonhosted.org/packages/c8/fd/742a9b4f4a896cef7f066dd8b146bf5682317261f0b71bab2b35928a98bd/timm-0.9.10.tar.gz"
    sha256 "581dacc867398327ab2f77470fae6eee09a0c5d1d838bd9bced21ce0057edfd9"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/62/06/d5604a70d160f6a6ca5fd2ba25597c24abd5c5ca5f437263d177ac242308/tqdm-4.66.1.tar.gz"
    sha256 "d88e651f9db8d8551a62556d3cff9e3034274ca5d66e93197cf2490e2dcb69c7"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/1f/7a/8b94bb016069caa12fc9f587b28080ac33b4fbb8ca369b98bc0a4828543e/typing_extensions-4.8.0.tar.gz"
    sha256 "df8e4339e9cb77357558cbdbceca33c303714cf861d1eef15e1070055ae8b7ef"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/36/dd/a6b232f449e1bc71802a5b7950dc3675d32c6dbc2a1bd6d71f065551adb6/urllib3-2.1.0.tar.gz"
    sha256 "df7aa8afb0148fa78488e7899b2c59b5f4ffcfa82e6c54ccb9dd37c1d7b52d54"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/2e/1c/21f2379555bba50b54e5a965d9274602fe2bada4778343d5385840f7ac34/wcwidth-0.2.10.tar.gz"
    sha256 "390c7454101092a6a5e43baad8f83de615463af459201709556b6e4b1c861f97"
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
