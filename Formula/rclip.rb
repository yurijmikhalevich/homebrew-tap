class Rclip < Formula
  include Language::Python::Virtualenv

  desc "AI-Powered Command-Line Photo Search Tool"
  homepage "https://github.com/yurijmikhalevich/rclip"
  url "https://files.pythonhosted.org/packages/0e/4f/d7a582cee4c71edd5caacac56bcc88fb4ab4171ceac920e59d74b4410af6/rclip-1.10.1.tar.gz"
  sha256 "1273010d245acdb9d5a265616d86acf4c79f521bd04a8bd3796f718c0c98a41a"
  license "MIT"

  depends_on "rust" => :build # for safetensors
  depends_on "certifi"
  depends_on "libyaml"
  depends_on "numpy"
  depends_on "pillow"
  depends_on "python@3.12"
  depends_on "pytorch"
  depends_on "sentencepiece"
  depends_on "torchvision"

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/08/dd/49e06f09b6645156550fb9aee9cc1e59aba7efbc972d665a1bd6ae0435d4/filelock-3.15.4.tar.gz"
    sha256 "2207938cbc1844345cb01a5a95524dae30f0ce089eba5b00378295a17e3e90cb"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/79/a5/3be4f3b4e941ee4526dd52f9c0a4ae6660ccb92e59b553e794015b249e97/fsspec-2024.6.0.tar.gz"
    sha256 "f579960a56e6d8038a9efc8f9c77279ec12e6299aa86b0769a7e9c46b94527c2"
  end

  resource "ftfy" do
    url "https://files.pythonhosted.org/packages/a8/cf/b53c42f47090525740b30007a1f53e61088109a5d7eae8e41c8398a7ba7a/ftfy-6.2.0.tar.gz"
    sha256 "5e42143c7025ef97944ca2619d6b61b0619fc6654f98771d39e862c1424c75c0"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/9d/83/0c07c6e6de04b097a4dd474a30492a650e5845256c4e4eed4397316248e4/huggingface_hub-0.23.4.tar.gz"
    sha256 "35d99016433900e44ae7efe1c209164a5a81dbbcd53a52f99c281dcd7ce22431"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/21/ed/f86a79a07470cb07819390452f178b3bef1d375f2ec021ecfc709fc7cf07/idna-3.7.tar.gz"
    sha256 "028ff3aadf0609c1fd278d8ea3089299412a7a8b9bd005dd08b9f8285bcb5cfc"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/ed/55/39036716d19cab0747a5020fc7e907f362fbf48c984b14e62127f7e68e5d/jinja2-3.1.4.tar.gz"
    sha256 "4a3aee7acbbe7303aede8e9648d13b8bf88a429282aa6122a993f0ac800cb369"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/87/5b/aae44c6655f3801e81aa3eef09dbbf012431987ba564d7231722f68df02d/MarkupSafe-2.1.5.tar.gz"
    sha256 "d283d37a890ba4c1ae73ffadf8046435c76e7bc2247bbb63c00bd1a709c6544b"
  end

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/e0/47/dd32fa426cc72114383ac549964eecb20ecfd886d1e5ccf5340b55b02f57/mpmath-1.3.0.tar.gz"
    sha256 "7a28eb2a9774d00c7bc92411c19a89209d5da7c4c9a9e227be8330a23a25b91f"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/c4/80/a84676339aaae2f1cfdf9f418701dd634aef9cc76f708ef55c36ff39c3ca/networkx-3.2.1.tar.gz"
    sha256 "9f1bb5cf3409bf324e0a722c20bdb4c20ee39bf1c30ce8ae499c8502b0b5e0c6"
  end

  resource "open-clip-torch" do
    url "https://github.com/mlfoundations/open_clip/archive/refs/tags/v2.24.0.tar.gz"
    sha256 "83d78a78f756685e80fdb8baa2f2fb308c791fabdbfe1c0ddcd6fed7d22de7b6"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/51/65/50db4dda066951078f0a96cf12f4b9ada6e4b811516bf0262c0f4f7064d4/packaging-24.1.tar.gz"
    sha256 "026ed72c8ed3fcce5bf8950572258698927fd1dbda10a5e981cdf0ac37f4f002"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/20/5f/00d891817d4031bbf4e846a99834bf949a76714c10a726833aa184176772/protobuf-5.27.1.tar.gz"
    sha256 "df5e5b8e39b7d1c25b186ffdf9f44f40f810bbcc9d2b71d9d3156fee5a9adf15"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/7a/db/5ddc89851e9cc003929c3b08b9b88b429459bf9acbf307b4556d51d9e49b/regex-2024.5.15.tar.gz"
    sha256 "d3ee02d9e5f482cc8309134a91eeaacbdd2261ba111b0fef3748eeb4913e6a2c"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/9c/21/acd1b6dd9dad9708fd388fdbe6618e461108cdbd56ff4eab6094c6e61035/safetensors-0.4.3.tar.gz"
    sha256 "2f85fc50c4e07a21e95c24e07460fe6f7e2859d0ce88092838352b798ce711c2"
  end

  resource "sentencepiece" do
    url "https://files.pythonhosted.org/packages/c9/d2/b9c7ca067c26d8ff085d252c89b5f69609ca93fb85a00ede95f4857865d4/sentencepiece-0.2.0.tar.gz"
    sha256 "a52c19171daaf2e697dc6cbe67684e0fa341b1248966f6aebb541de654d15843"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/41/8a/0d1bbd33cd3091c913d298746e56f40586fa954788f51b816c6336424675/sympy-1.12.1.tar.gz"
    sha256 "2877b03f998cd8c08f07cd0de5b767119cd3ef40d09f41c30d722f6686b0fb88"
  end

  resource "timm" do
    url "https://files.pythonhosted.org/packages/e3/2c/643be207862d69239c00dba75e104db384579feb9a6a2a26a9e9dcb8880b/timm-1.0.7.tar.gz"
    sha256 "d1d26d906b5e188d7e7d536a6a0999568bb184f884f9a334c48d46fc6dc166c8"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/5a/c0/b7599d6e13fe0844b0cda01b9aaef9a0e87dbb10b06e4ee255d3fa1c79a2/tqdm-4.66.4.tar.gz"
    sha256 "e4d936c9de8727928f3be6079590e97d9abfe8d39a590be678eb5919ffc186bb"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/43/6d/fa469ae21497ddc8bc93e5877702dca7cb8f911e337aca7452b5724f1bb6/urllib3-2.2.2.tar.gz"
    sha256 "dd505485549a7a552833da5e6063639d0d177c04f23bc3864e41e5dc5f612168"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  def install
    virtualenv_install_with_resources

    # link dependent virtualenvs to this one
    site_packages = Language::Python.site_packages("python3.12")
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
