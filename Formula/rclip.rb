class Rclip < Formula
  include Language::Python::Virtualenv

  desc "AI-Powered Command-Line Photo Search Tool"
  homepage "https://github.com/yurijmikhalevich/rclip"
  url "https://files.pythonhosted.org/packages/07/6f/cb4c4ba54270aae08d297efef241785e25e898789fe16cfc49c72587b8de/rclip-3.1.0.tar.gz"
  sha256 "a5c23beffe65a61ac2b5fd25d47096763853c3a10efe74cbd6d26b0033333a3c"
  license "MIT"

  if OS.linux?
    depends_on "patchelf" => :build # for rawpy
    depends_on "zlib-ng-compat" # rawpy bundled libs link against libz
  end
  depends_on "pkgconf" => :build
  # Homebrew CI builds uv_build's maturin dependency from source.
  depends_on "rust" => :build
  depends_on "certifi"
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
    url "https://files.pythonhosted.org/packages/fb/d8/748ea0a47f0fa15227fe682f7a80826b4b7c096e4818044b8f56d6cb66d6/huggingface_hub-1.18.0.tar.gz"
    sha256 "f0c5ecd1ef8c6a60f86f61ee278f2c1570ba9e279c9f54de9094210723b3613b"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/cb/0e/3a246dbf05666918bd3664d9d787f84a9108f6f43cc953a077e4a7dfdb7e/regex-2026.4.4.tar.gz"
    sha256 "e08270659717f6973523ce3afbafa53515c4dc5dcad637dc215b6fd50f689423"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/06/b3/36c8ecf72e8925200671613332db156d84b99b3aee742a41c1938ebb0808/tqdm-4.68.1.tar.gz"
    sha256 "fc163d96b287bd031e1aa24421ce4411b25559bd0a1be4fe649bdaa4d2c02bf5"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/af/44/c833e6b746ffb654e9abacf7ad6c2480a9c8c42e9637c1ae849964fb4dde/wcwidth-0.8.0.tar.gz"
    sha256 "68a882ff6d14e3d14e0cae590b96a0551be64ce4905408112a8254434a1bdf69"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/9b/98/518d8e5081007684232226f475082b30087d0f585e8457db087298259f49/click-8.4.1.tar.gz"
    sha256 "918b5633eddf6b41c32d4f454bf0de810065c74e3f7dbf8ee5452f8be88d3e96"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/1f/f9/f38573ed5844586db374d085911740a501ccfa373b455fc9413f09f85237/filelock-3.29.1.tar.gz"
    sha256 "d97e6b1b9757569626c58caa07dc4beb1613f4a2938b1e8cc81afca398906c9e"
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
    url "https://files.pythonhosted.org/packages/60/fd/5b1491d9e4b586d621c54f4c36b888714164b6875f8d6afa3f9072906a51/protobuf-7.35.0.tar.gz"
    sha256 "a2efd84605f41e559f1881b0912b44099d0a2ac9bf46b3474823f10fb393b0e6"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e7/a1/67fe25fac3c7642725500a3f6cfe5821ad557c3abb11c9d20d12c7008d3e/charset_normalizer-3.4.7.tar.gz"
    sha256 "ae89db9e5f98a11a4bf50407d4363e7b09b31e55bc117b4f7d80aab97ba009e5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/cd/63/9496c57188a2ee585e0f1db071d75089a11e98aa86eb99d9d7618fc1edce/idna-3.18.tar.gz"
    sha256 "ffb385a7e039654cef1ab9ef32c6fafe283c0c0467bba1d9029738ce4a14a848"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "231e0ec3b63ceb14667c67be60f2f2c40a518cb38b03af60abc813da26505f4c"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/19/14/2c5dd9f512b66549ae92767a9c7b330ae88e1932ca57876909410251fe13/anyio-4.13.0.tar.gz"
    sha256 "334b70e641fd2221c1505b3890c69882fe4a2df910cba14d97019b90b24439dc"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
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
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
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
        url "https://files.pythonhosted.org/packages/9b/ff/edcc2b40162bef3ff78e14ab637e5f3b89243d6aee72f5949d3bb6a5af83/hf_xet-1.5.0-cp37-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "fd6e5a9b0fdac4ed03ed45ef79254a655b1aaab514a02202617fbf643f5fdf7a"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "hf-xet" do
        url "https://files.pythonhosted.org/packages/c4/a2/546f47f464737b3edbab6f8ddb57f2599b93d2cbb66f06abb475ccb48651/hf_xet-1.5.0-cp37-abi3-manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "9a0ee58cd18d5ea799f7ed11290bbccbe56bdd8b1d97ca74b9cc49a3945d7a3b"
      end
    elsif Hardware::CPU.intel?
      resource "hf-xet" do
        url "https://files.pythonhosted.org/packages/49/4d/103f76b04310e5e57656696cc184690d20c466af0bca3ca88f8c8ea5d4f3/hf_xet-1.5.0-cp37-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.whl", using: :nounzip
        sha256 "3531b1823a0e6d77d80f9ed15ca0e00f0d115094f8ac033d5cae88f4564cc949"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/cf/a2/c801242685e0ce48a4ca51dfafbb588765e0446397e123be53ba5598f3f5/onnxruntime-1.26.0-cp313-cp313-macosx_14_0_arm64.whl", using: :nounzip
        sha256 "ccce19c5f771b8268902f77d9fed9e88f9499465d6780808faa6611a789d33f0"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/e2/64/0492c0b1db04e29b2630c87cfa36f9d6872b1ca8614b90c5cad58fac7d76/onnxruntime-1.26.0-cp313-cp313-manylinux_2_27_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "bdbed8cf3b672b66acb032f33a253bc27f42bce6ece48ae3fab4fa483a5e96e0"
      end
    elsif Hardware::CPU.intel?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/3d/26/4d09ddc755a84fc8d5e192991626b0e0680e8f6c5d58f4f1d05c42bc48cf/onnxruntime-1.26.0-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "c07af6fc6d5557835f2b6ee7a96d8b3235d0c57a8e230efdedaee106a8a3cbc6"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      resource "pillow-heif" do
        url "https://files.pythonhosted.org/packages/23/eb/b6b52e3655f366b95301f18aecd2d35487cace18d17134b80ad0f70cc1eb/pillow_heif-1.3.0-cp313-cp313-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "9390dd7987887aa09779fbd88bbab715c732c9ad3a71d6707284035e3ca93379"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "pillow-heif" do
        url "https://files.pythonhosted.org/packages/c1/b3/b69610e9565fc8bcaf2303f412e857c0439d23cc18cf866c72a96ec6b2e6/pillow_heif-1.3.0-cp313-cp313-manylinux_2_26_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "6e8444ccb330015e1db930207d269886e4b6c666121cd9e5fdad88735950b09f"
      end
    elsif Hardware::CPU.intel?
      resource "pillow-heif" do
        url "https://files.pythonhosted.org/packages/47/8c/be44f6dea425a9756ff418cb03f5ee75ed1c7dd1ff9bee1f3893b2b82da4/pillow_heif-1.3.0-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "7d30054ccc97ecbe5ee3fa486a505ccc33bfbb27f005ad624ddb4c17b80ddd57"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  end

  def install
    # Fix for ZIP timestamp issue with files having dates before 1980
    ENV["SOURCE_DATE_EPOCH"] = "315532800" # 1980-01-01

    excluded_resources = %w[rawpy hf-xet onnxruntime pillow-heif]
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

    resource("pillow-heif").stage do
      wheel = Dir["*.whl"].first
      valid_wheel = wheel.sub(/^.*--/, "")
      File.rename(wheel, valid_wheel)
      system "python3.13", "-m", "pip", "--python=#{libexec}/bin/python", "install", "--no-deps", valid_wheel
    end

    if OS.linux?
      targets = Dir[libexec/"lib/python3.13/site-packages/pillow_heif.libs/*.so*"]
      if targets.empty?
        odie "Failed to find any files to patch with patchelf for pattern: " \
             "#{libexec}/lib/python3.13/site-packages/pillow_heif.libs/*.so*"
      end
      targets.each do |so|
        next if File.symlink?(so)

        system "patchelf", "--set-rpath", "$ORIGIN", so
      end
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
