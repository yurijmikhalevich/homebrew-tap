class Rclip < Formula
  include Language::Python::Virtualenv

  desc "Semantic photo search for the command-line"
  homepage "https://github.com/yurijmikhalevich/rclip"
  url "https://files.pythonhosted.org/packages/68/00/e88fbbf47500e9fda687b96a48b004c0702c80652b8a4a4a03938530ff50/rclip-3.2.4.tar.gz"
  sha256 "df9936bd2293835a145dd3916108860df9aac662d6988a95bf5590b08165a6c6"
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
    url "https://files.pythonhosted.org/packages/e6/7e/fad82ad491b226e832d2da90a1a59f36acd4526cda8c726f639834754aa4/huggingface_hub-1.20.1.tar.gz"
    sha256 "9f6d63bfbeab2d2a8357200a9bc4f18cd2c8bfac9579f792f5922e77bf6471d0"
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
    url "https://files.pythonhosted.org/packages/87/d7/0535a28b1f5f24f6612fb3ff1e89fb1a8d160fee0f976e0aa6803862134b/tqdm-4.68.3.tar.gz"
    sha256 "00dfa48452b6b6cfae3dd9885636c23d3422d1ec97c66d96818cbd5e0821d482"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/49/b4/51fe890511f0f242d07cb1ebe6a5b6db417262b9d2568b460347c57d95cc/wcwidth-0.8.1.tar.gz"
    sha256 "faf5b4a5366a72dc49cad48cdf21f52bdf63bdda995178e483ba247ff79089b9"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/9b/98/518d8e5081007684232226f475082b30087d0f585e8457db087298259f49/click-8.4.1.tar.gz"
    sha256 "918b5633eddf6b41c32d4f454bf0de810065c74e3f7dbf8ee5452f8be88d3e96"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/e6/dc/be6cbe99670cd6e4ad387123647cb08e0c32975e223f82551e914c5568a6/filelock-3.29.4.tar.gz"
    sha256 "10cdb3656fc44541cdf30652a93fb10ec6b05325620eb316bd26893e4201538a"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/10/a1/ae4e3e5003468d6391d2c77b6fa1cd73bd5d13511d81c642d7b28ac90ed4/fsspec-2026.6.0.tar.gz"
    sha256 "f5bac145310fe30e16e1471bd6840b2d990d609e872251d7e674241822abf01a"
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
    url "https://files.pythonhosted.org/packages/da/01/9ef0afd7999eb9badb3a768b4aedd78c86d4c65cfaf1958ab276199e76b4/protobuf-7.35.1.tar.gz"
    sha256 "ce115a26fe0c39a2c29973d914d327e516a6455464489fe3cd1e51a1b354f81a"
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
    url "https://files.pythonhosted.org/packages/1c/b5/001890774a9552aff22502b8da382593109ce0c95314abaebbb116567545/anyio-4.14.0.tar.gz"
    sha256 "b47c1f9ccf73e67021df785332508f99379c68fa7d0684e8e3492cb1d4b23f89"
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
        url "https://files.pythonhosted.org/packages/35/94/4b2ecfbad8f8b04701a23aefb62f540b9137d058b7e1dbef16a32676f0e9/hf_xet-1.5.1-cp37-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "94e761bbd266bf4c03cee73753916062665ce8365aa40ed321f45afcb934b41e"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "hf-xet" do
        url "https://files.pythonhosted.org/packages/cd/6e/21f7e5a2381278bd3b7b7a5a4d90038518bb6308a0c1daf5d9f8268bb178/hf_xet-1.5.1-cp37-abi3-manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "a93df2039190502835b1db8cd7e178b0b7b889fe9ab51299d5ced26e0dd879a4"
      end
    elsif Hardware::CPU.intel?
      resource "hf-xet" do
        url "https://files.pythonhosted.org/packages/de/cc/f99f4bc7295023d7bd9ebbfd51f75cc530ca262c1227666268b8208f4b77/hf_xet-1.5.1-cp37-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.whl", using: :nounzip
        sha256 "892e3a3a3aecc12aded8b93cf4f9cd059282c7de0732f7d55026f3abdf474350"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/fb/2b/54208fd03ad410480bc17edf4869376362da8bbf46fe186ddf4cb5cc20fe/onnxruntime-1.27.0-cp313-cp313-macosx_14_0_arm64.whl", using: :nounzip
        sha256 "b3e5b58b8c89c2b20e086e890aa9527377e5c240dc3ecc1640d18e07705eeb1c"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/ce/88/24fc51fcbb126da6d032372314e47b55c3faad58f2aa78c0e199ccd20b9c/onnxruntime-1.27.0-cp313-cp313-manylinux_2_27_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "48b3d87eb560ff6a772240506f3c78d6d27c63cafedd5c775672e1194f968cfd"
      end
    elsif Hardware::CPU.intel?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/cb/19/14929c3c2fe0b79b41cce24463062bf3afa4cdd3c19dccf00319caa92bff/onnxruntime-1.27.0-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "6872443f236a554921cda6f318c900e2d0c226792cf3534d00e5057c6926e5d2"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      resource "pi-heif" do
        url "https://files.pythonhosted.org/packages/c5/9e/22a938ed3d56451e42f4a0383fc16cdd04480b16244f4901ec92f1306b4a/pi_heif-1.4.0-cp313-cp313-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "c95f5cf99285403698fc48436a05af01d4c38cbedc01949dd4d96f53590fbd33"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "pi-heif" do
        url "https://files.pythonhosted.org/packages/77/09/e2f51a7569f5950d52e8d1b140f10bdd62aeac079b7e1af11fa16b269cbf/pi_heif-1.4.0-cp313-cp313-manylinux_2_26_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "0cd041cdf552019737f665fdcdf9c831ef354785a92d930d7f546ba9959a0284"
      end
    elsif Hardware::CPU.intel?
      resource "pi-heif" do
        url "https://files.pythonhosted.org/packages/50/a8/59742173bc4c9c4831fbea9c4da542b9e28782bea13df9dc9d7902451369/pi_heif-1.4.0-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "2fd498fabcdc77159414cccfd966ca48735497fd8c038d1b0135025f3cceac90"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  end

  def install
    # Fix for ZIP timestamp issue with files having dates before 1980
    ENV["SOURCE_DATE_EPOCH"] = "315532800" # 1980-01-01

    excluded_resources = %w[rawpy hf-xet onnxruntime pi-heif]
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

    resource("pi-heif").stage do
      wheel = Dir["*.whl"].first
      valid_wheel = wheel.sub(/^.*--/, "")
      File.rename(wheel, valid_wheel)
      system "python3.13", "-m", "pip", "--python=#{libexec}/bin/python", "install", "--no-deps", valid_wheel
    end

    if OS.linux?
      targets = Dir[libexec/"lib/python3.13/site-packages/pi_heif.libs/*.so*"]
      if targets.empty?
        odie "Failed to find any files to patch with patchelf for pattern: " \
             "#{libexec}/lib/python3.13/site-packages/pi_heif.libs/*.so*"
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
