class Rclip < Formula
  include Language::Python::Virtualenv

  desc "AI-Powered Command-Line Photo Search Tool"
  homepage "https://github.com/yurijmikhalevich/rclip"
  url "https://files.pythonhosted.org/packages/3a/67/6d84e7f435b5f0e3cd8899a9e72e9bfd08441fe8fd3effa2bc327e9c0789/rclip-1.7.24.tar.gz"
  sha256 "4442c3ce00e098389e3cc1f0586ab3812f1f4ae23f23346e637522f35ab05952"
  license "MIT"

  bottle do
    root_url "https://ghcr.io/v2/yurijmikhalevich/tap"
    sha256 cellar: :any,                 ventura:      "9308acb96d8c6b3758a22cab42885b9f7022469ccb67fe6d076a7383705b24ea"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e90f2b363f2e77c97f89ecca5fdc0be585522da5cd53a0a3d2d5241623a5e944"
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
    url "https://files.pythonhosted.org/packages/fa/08/cac914ff6ff46c4500fc4323a939dbe7a0f528cca04e7fd3e859611dea41/fsspec-2023.12.2.tar.gz"
    sha256 "8548d39e8810b59c38014934f6b31e57f40c1b20f911f4cc2b85389c7e9bf0cb"
  end

  resource "ftfy" do
    url "https://files.pythonhosted.org/packages/dd/da/d177a95c12483cffd247f283846ac94f2cb7a9cd6fcf4b675a02a46ffd82/ftfy-6.1.3.tar.gz"
    sha256 "693274aead811cff24c1e8784165aa755cd2f6e442a5ec535c7d697f6422a422"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/07/a7/de46c577512599e9baf8012f53a67f0688ba20b25bedbc521617b083c981/huggingface_hub-0.20.2.tar.gz"
    sha256 "215c5fceff631030c7a3d19ba7b588921c908b3f21eef31d160ebc245b200ff6"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/bf/3f/ea4b9117521a1e9c50344b909be7886dd00a519552724809bb1f486986c2/idna-3.6.tar.gz"
    sha256 "9ecdbbd083b06798ae1e86adcbfe8ab1479cf864e4ee30fe4e46a003d12491ca"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/b2/5e/3a21abf3cd467d7876045335e681d276ac32492febe6d98ad89562d1a7e1/Jinja2-3.1.3.tar.gz"
    sha256 "ac8bd6544d4bb2c9792bf3a159e80bba8fda7f07e81bc3aed565432d5925ba90"
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
    url "https://github.com/mlfoundations/open_clip/archive/refs/tags/v2.24.0.tar.gz"
    sha256 "83d78a78f756685e80fdb8baa2f2fb308c791fabdbfe1c0ddcd6fed7d22de7b6"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/fb/2b/9b9c33ffed44ee921d0967086d653047286054117d584f1b1a7c22ceaf7b/packaging-23.2.tar.gz"
    sha256 "048fb0e9405036518eaaf48a55953c750c11e1a1b68e0dd1a9d62ed0c092cfc5"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/db/a5/05ea470f4e793c9408bc975ce1c6957447e3134ce7f7a58c13be8b2c216f/protobuf-4.25.2.tar.gz"
    sha256 "fe599e175cb347efc8ee524bcd4b902d11f7262c0e569ececcb89995c15f0a5e"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/b5/39/31626e7e75b187fae7f121af3c538a991e725c744ac893cc2cfd70ce2853/regex-2023.12.25.tar.gz"
    sha256 "29171aa128da69afdf4bde412d5bedc335f2ca8fcfe4489038577d05f16181e5"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/37/7b/72f3998263fbdc4b2fe105fbc4d08abf9ee54ef7049ade7a6e79f9af0042/safetensors-0.4.1.tar.gz"
    sha256 "2304658e6ada81a5223225b4efe84748e760c46079bffedf7e321763cafb36c9"
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
    url "https://files.pythonhosted.org/packages/8a/3c/1f84a65cd049a360723d92cf7a3911126deb9409129f14e9648b78d1115c/timm-0.9.12.tar.gz"
    sha256 "9121d1cf320f7f32490d893340fd33117bda0a0270eb8282dfd52ae5fd3e1af6"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/62/06/d5604a70d160f6a6ca5fd2ba25597c24abd5c5ca5f437263d177ac242308/tqdm-4.66.1.tar.gz"
    sha256 "d88e651f9db8d8551a62556d3cff9e3034274ca5d66e93197cf2490e2dcb69c7"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/0c/1d/eb26f5e75100d531d7399ae800814b069bc2ed2a7410834d57374d010d96/typing_extensions-4.9.0.tar.gz"
    sha256 "23478f88c37f27d76ac8aee6c905017a143b0b1b886c3c9f66bc2fd94f9f5783"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/36/dd/a6b232f449e1bc71802a5b7950dc3675d32c6dbc2a1bd6d71f065551adb6/urllib3-2.1.0.tar.gz"
    sha256 "df7aa8afb0148fa78488e7899b2c59b5f4ffcfa82e6c54ccb9dd37c1d7b52d54"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
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
