class Rclip < Formula
  include Language::Python::Virtualenv

  desc "AI-Powered Command-Line Photo Search Tool"
  homepage "https://github.com/yurijmikhalevich/rclip"
  url "https://files.pythonhosted.org/packages/dc/7b/81c03dc932d3911e034e6faadf76ceef97773d30c7152bacdd73b10d8390/rclip-3.0.5.tar.gz"
  sha256 "3d9290188e26ce072404852149cf1f112bb048cfbcd76a6c27fc54281bea82b4"
  license "MIT"

  if OS.linux?
    depends_on "patchelf" => :build # for rawpy
    depends_on "zlib-ng-compat" # rawpy bundled libs link against libz
  end
  depends_on "pkgconf" => :build
  # Homebrew CI builds uv_build's maturin dependency from source.
  depends_on "rust" => :build
  depends_on "certifi"
  depends_on "libheif"
  depends_on "libraw"
  depends_on "libyaml"
  depends_on "numpy"
  depends_on "pillow"
  depends_on "python@3.13"

  resource "ftfy" do
    url "https://files.pythonhosted.org/packages/a5/d3/8650919bc3c7c6e90ee3fa7fd618bf373cbbe55dff043bd67353dbb20cd8/ftfy-6.3.1.tar.gz"
    sha256 "9b3c3d90f84fb267fe64d375a07b7f8912d817cf86009ae134aa03e1819506ec"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/89/ff/ec7ed2eb43bd7ce8bb2233d109cc235c3e807ffe5e469dc09db261fac05e/huggingface_hub-1.13.0.tar.gz"
    sha256 "f6df2dac5abe82ce2fe05873d10d5ff47bc677d616a2f521f4ee26db9415d9d0"
  end

  resource "pillow-heif" do
    url "https://files.pythonhosted.org/packages/cd/58/2df4fc42840633e01c97b75965cb1bc6e14425973b92382391650e97e4b7/pillow_heif-1.3.0.tar.gz"
    sha256 "af8d2bda85e395677d5bb50d7bda3b5655c946cc95b913b5e7222fabacbb467f"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/cb/0e/3a246dbf05666918bd3664d9d787f84a9108f6f43cc953a077e4a7dfdb7e/regex-2026.4.4.tar.gz"
    sha256 "e08270659717f6973523ce3afbafa53515c4dc5dcad637dc215b6fd50f689423"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/5f/a4/98b9c7c6428a668bf7e42ebb7c79d576a1c3c1e3ae2d47e674b468388871/requests-2.33.1.tar.gz"
    sha256 "18817f8c57c6263968bc123d237e3b8b08ac046f5456bd1e307ee8f4250d3517"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/09/a9/6ba95a270c6f1fbcd8dac228323f2777d886cb206987444e4bce66338dd4/tqdm-4.67.3.tar.gz"
    sha256 "7d825f03f89244ef73f1d4ce193cb1774a8179fd96f31d7e1dcde62092b960bb"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/2c/ee/afaf0f85a9a18fe47a67f1e4422ed6cf1fe642f0ae0a2f81166231303c52/wcwidth-0.7.0.tar.gz"
    sha256 "90e3a7ea092341c44b99562e75d09e4d5160fe7a3974c6fb842a101a95e7eed0"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/b5/fe/997687a931ab51049acce6fa1f23e8f01216374ea81374ddee763c493db5/filelock-3.29.0.tar.gz"
    sha256 "69974355e960702e789734cb4871f884ea6fe50bd8404051a3530bc07809cf90"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/d5/8d/1c51c094345df128ca4a990d633fe1a0ff28726c9e6b3c41ba65087bba1d/fsspec-2026.4.0.tar.gz"
    sha256 "301d8ac70ae90ef3ad05dcf94d6c3754a097f9b5fe4667d2787aa359ec7df7e4"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d7/f1/e7a6dd94a8d4a5626c03e4e99c87f241ba9e350cd9e6d75123f992427270/packaging-26.2.tar.gz"
    sha256 "ff452ff5a3e828ce110190feff1178bb1f2ea2281fa2075aadb987c2fb221661"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/e4/51/9aed62104cea109b820bbd6c14245af756112017d309da813ef107d42e7e/typer-0.25.1.tar.gz"
    sha256 "9616eb8853a09ffeabab1698952f33c6f29ffdbceb4eaeecf571880e8d7664cc"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "flatbuffers" do
    url "https://files.pythonhosted.org/packages/e8/2d/d2a548598be01649e2d46231d151a6c56d10b964d94043a335ae56ea2d92/flatbuffers-25.12.19-py2.py3-none-any.whl"
    sha256 "7634f50c427838bb021c2d66a3d1168e9d199b0607e6329399f04846d42e20b4"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/6b/6b/a0e95cad1ad7cc3f2c6821fcab91671bd5b78bd42afb357bb4765f29bc41/protobuf-7.34.1.tar.gz"
    sha256 "9ce42245e704cc5027be797c1db1eb93184d44d1cdd71811fb2d9b25ad541280"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e7/a1/67fe25fac3c7642725500a3f6cfe5821ad557c3abb11c9d20d12c7008d3e/charset_normalizer-3.4.7.tar.gz"
    sha256 "ae89db9e5f98a11a4bf50407d4363e7b09b31e55bc117b4f7d80aab97ba009e5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ce/cc/762dfb036166873f0059f3b7de4565e1b5bc3d6f28a414c13da27e442f99/idna-3.13.tar.gz"
    sha256 "585ea8fe5d69b9181ec1afba340451fba6ba764af97026f92a91d4eef164a242"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/19/14/2c5dd9f512b66549ae92767a9c7b330ae88e1932ca57876909410251fe13/anyio-4.13.0.tar.gz"
    sha256 "334b70e641fd2221c1505b3890c69882fe4a2df910cba14d97019b90b24439dc"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/bb/63/f9e1ea081ce35720d8b92acde70daaedace594dc93b693c869e0d5910718/click-8.3.3.tar.gz"
    sha256 "398329ad4837b2ff7cbe1dd166a4c0f8900c3ca3a218de04466f38f6497f18a2"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/57/ba/046ceea27344560984e26a590f90bc7f4a75b06701f653222458922b558c/annotated_doc-0.0.4.tar.gz"
    sha256 "fbcda96e87e9c92ad167c2e53839e57503ecfda18804ea28102353485033faa4"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/c3/b2/bc9c9196916376152d655522fdcebac55e66de6603a76a02bca1b6414f6c/pygments-2.20.0.tar.gz"
    sha256 "6757cd03768053ff99f3039c1a36d6c0aa0b263438fcab17520b30a303a82b5f"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  if OS.mac?
    resource "attrs" do
      url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
      sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
    end

    resource "cattrs" do
      url "https://files.pythonhosted.org/packages/a0/ec/ba18945e7d6e55a58364d9fb2e46049c1c2998b3d805f19b703f14e81057/cattrs-26.1.0.tar.gz"
      sha256 "fa239e0f0ec0715ba34852ce813986dfed1e12117e209b816ab87401271cdd40"
    end

    resource "coremltools" do
      url "https://files.pythonhosted.org/packages/62/50/76d5a828d875ed8ad7392bf9294233261747de02f7415f51d4add8dc0acf/coremltools-9.0-cp313-none-macosx_11_0_arm64.whl", using: :nounzip
      sha256 "9f2f858beec7f5d486cd1a59aefb452d59347e236670b67db325795bf692f480"
    end

    resource "mpmath" do
      url "https://files.pythonhosted.org/packages/e0/47/dd32fa426cc72114383ac549964eecb20ecfd886d1e5ccf5340b55b02f57/mpmath-1.3.0.tar.gz"
      sha256 "7a28eb2a9774d00c7bc92411c19a89209d5da7c4c9a9e227be8330a23a25b91f"
    end

    resource "pyaml" do
      url "https://files.pythonhosted.org/packages/38/fb/2b9590512a9d7763620d87171c7531d5295678ce96e57393614b91da8998/pyaml-26.2.1.tar.gz"
      sha256 "489dd82997235d4cfcf76a6287fce2f075487d77a6567c271e8d790583690c68"
    end

    resource "sympy" do
      url "https://files.pythonhosted.org/packages/83/d3/803453b36afefb7c2bb238361cd4ae6125a569b4db67cd9e79846ba2d68c/sympy-1.14.0.tar.gz"
      sha256 "d3d3fe8df1e5a0b42f0e7bdf50541697dbe7d23746e894990c030e2b05e72517"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      resource "rawpy" do
        url "https://files.pythonhosted.org/packages/8a/fd/5df77631386343102a0845e4e3d8e19bbbc65eff269975501a4d0c495339/rawpy-0.26.1-cp313-cp313-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "6b9ce24a5446098b0cb93dea3cba102959bde20df39a10c3bcedf1226295e54b"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "rawpy" do
        url "https://files.pythonhosted.org/packages/df/b1/4fac43de665eb677ddc0571c498caca01b4ec143479912c2c43a5a10b5d3/rawpy-0.26.1-cp313-cp313-manylinux_2_27_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "8d1d0a26e79297e95a183a769e0bca3404830797224e168980b04463532084be"
      end
    elsif Hardware::CPU.intel?
      resource "rawpy" do
        url "https://files.pythonhosted.org/packages/59/01/29708de814211c8c0beea8bf9586cfb5b194660780b42edee2314ec94453/rawpy-0.26.1-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "cd7529caf7722f6b89b3c0ab505313bd4638dd3136af0275906209114ce74d73"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      resource "hf-xet" do
        url "https://files.pythonhosted.org/packages/0b/f8/7aacb8e5f4a7899d39c787b5984e912e6c18b11be136ef13947d7a66d265/hf_xet-1.4.3-cp37-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "e23717ce4186b265f69afa66e6f0069fe7efbf331546f5c313d00e123dc84583"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "hf-xet" do
        url "https://files.pythonhosted.org/packages/53/60/46d493db155d2ee2801b71fb1b0fd67696359047fdd8caee2c914cc50c79/hf_xet-1.4.3-cp37-abi3-manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "39f2d2e9654cd9b4319885733993807aab6de9dfbd34c42f0b78338d6617421f"
      end
    elsif Hardware::CPU.intel?
      resource "hf-xet" do
        url "https://files.pythonhosted.org/packages/df/9a/a24b26dc8a65f0ecc0fe5be981a19e61e7ca963b85e062c083f3a9100529/hf_xet-1.4.3-cp37-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.whl", using: :nounzip
        sha256 "fc360b70c815bf340ed56c7b8c63aacf11762a4b099b2fe2c9bd6d6068668c08"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/d2/ee/db3ac55ef770347a926ac0f1317df0ab42c8bc604350833b30c7356bf936/onnxruntime-1.25.1-cp313-cp313-macosx_14_0_arm64.whl", using: :nounzip
        sha256 "e9d9b3b1694196bc3c5bc66f760a237a5e27d7688aaa2e2c9c0f66abd0486699"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/dc/9a/33225481a94a59906fce44e27ab12fc3bddd2aaecdc6160bd73341ca1aba/onnxruntime-1.25.1-cp313-cp313-manylinux_2_27_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "311d29b943e46a55ca72ca1ea48d7815c993122bfc359f68215fddeb9583fff4"
      end
    elsif Hardware::CPU.intel?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/8b/09/f20aac60f6fcf840543be54d4e9252cfeb7e8c2bb6d22477aaeb180e763e/onnxruntime-1.25.1-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "98016a038b31160db23208706139fa3b99cd60bc1c5ffdade77aafd6a37a92ad"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  end

  def install
    # Fix for ZIP timestamp issue with files having dates before 1980
    ENV["SOURCE_DATE_EPOCH"] = "315532800" # 1980-01-01

    excluded_resources = %w[rawpy hf-xet onnxruntime]
    excluded_resources << "coremltools" if OS.mac?
    virtualenv_install_with_resources without: excluded_resources

    resource("rawpy").stage do
      wheel = Dir["*.whl"].first
      valid_wheel = wheel.sub(/^.*--/, "")
      File.rename(wheel, valid_wheel)
      system "python3.13", "-m", "pip", "--python=#{libexec}/bin/python", "install", "--no-deps", valid_wheel
    end

    if OS.linux?
      targets = Dir[libexec/"lib/python3.13/site-packages/rawpy/_rawpy*.so"]
      if targets.empty?
        odie "Failed to find any files to patch with patchelf for pattern: " \
             "#{libexec}/lib/python3.13/site-packages/rawpy/_rawpy*.so"
      end
      targets.each do |so|
        next if File.symlink?(so)

        system "patchelf", "--set-rpath", "$ORIGIN/../rawpy.libs", so
      end
      targets = Dir[libexec/"lib/python3.13/site-packages/rawpy.libs/*.so*"]
      if targets.empty?
        odie "Failed to find any files to patch with patchelf for pattern: " \
             "#{libexec}/lib/python3.13/site-packages/rawpy.libs/*.so*"
      end
      targets.each do |so|
        next if File.symlink?(so)

        system "patchelf", "--set-rpath", "$ORIGIN", so
      end
    end

    resource("hf-xet").stage do
      wheel = Dir["*.whl"].first
      valid_wheel = wheel.sub(/^.*--/, "")
      File.rename(wheel, valid_wheel)
      system "python3.13", "-m", "pip", "--python=#{libexec}/bin/python", "install", "--no-deps", valid_wheel
    end

    resource("onnxruntime").stage do
      wheel = Dir["*.whl"].first
      valid_wheel = wheel.sub(/^.*--/, "")
      File.rename(wheel, valid_wheel)
      system "python3.13", "-m", "pip", "--python=#{libexec}/bin/python", "install", "--no-deps", valid_wheel
    end

    if OS.mac?
      resource("coremltools").stage do
        wheel = Dir["*.whl"].first
        valid_wheel = wheel.sub(/^.*--/, "")
        File.rename(wheel, valid_wheel)
        system "python3.13", "-m", "pip", "--python=#{libexec}/bin/python", "install", "--no-deps", valid_wheel
      end
    end
  end

  test do
    output = shell_output("#{bin}/rclip cat")
    assert_match("score\tfilepath", output)
  end
end
