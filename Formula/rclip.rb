class Rclip < Formula
  include Language::Python::Virtualenv

  desc "Semantic photo search for the command-line"
  homepage "https://github.com/yurijmikhalevich/rclip"
  url "https://files.pythonhosted.org/packages/43/d5/1212e4c3fffc6a5fa6b22bcb2a7b8026e4f357f95c446765662abab2c56d/rclip-3.3.0.tar.gz"
  sha256 "4dab9fffdd1145393c0f228c93738f0a7319f52a12fc75c1b4d400c48cfc9225"
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
    url "https://files.pythonhosted.org/packages/82/db/3582597f8be0d34bd6881365a26d390854f12893eabdd62dd36de9df5a47/huggingface_hub-1.26.0.tar.gz"
    sha256 "c8cd4e2df1ba9402f77fce9b509ec1d52debb502551789473f34016acc14e361"
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
    url "https://files.pythonhosted.org/packages/21/3b/6c24bec5be5e743ffd99576daa5cc077722fc7d5bbc00bd133fa0c698dc6/tqdm-4.70.0.tar.gz"
    sha256 "55b0b0dbd97462d06ebee91e4dac24ed4d4702be82b24f07e6c1d27e08cea220"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/34/74/c6428f875774288bec1396f5bfcbc2d925700a4dad61727fd5f2b12f249d/wcwidth-0.8.2.tar.gz"
    sha256 "91fbef97204b96a3d4d421609b80340b760cf33e26da123ff243d76b1fda8dda"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/76/d4/81420972a676e8ffea40450d8c8c92943e7218a78fe9b64359836cc9876b/click-8.4.2.tar.gz"
    sha256 "9a6cea6e60b17ebe0a44c5cc636d94f09bd66142c1cd7d8b4cd731c4917a15f6"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/f6/57/3ba6e6cb097f85b855b00163d169f35365f44277df044dcf96d55b8f62a3/filelock-3.32.2.tar.gz"
    sha256 "c33351e1f49cae33414acbc6d56784e6ecee82514ec90795da1161fc4836b5b8"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/00/78/f34251dadb8f3921264a1d9b8946f5e542014ee2614b285261b4e40e6775/fsspec-2026.7.0.tar.gz"
    sha256 "c803c40f4cf860b49dea58ee3e1c33cb9c790520e233537e1340049f89b82a88"
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

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
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
    url "https://files.pythonhosted.org/packages/bd/2a/23f34ec9d04624958e137efdc394888716353190e75f25dd22c7a2c7a8aa/charset_normalizer-3.4.9.tar.gz"
    sha256 "673611bbd43f0810bec0b0f028ddeaaa501190339cac411f347ac76917c3ae7b"
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
    url "https://files.pythonhosted.org/packages/61/cc/a381afa6efea9f496eff839d4a6a1aed3bfafc7b3ab4b0d1b243a12573dd/anyio-4.14.2.tar.gz"
    sha256 "cfa139f3ed1a23ee8f88a145ddb5ac7605b8bbfd8592baacd7ce3d8bb4313c7f"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
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
      url "https://files.pythonhosted.org/packages/15/6a/acfdf17de0d6947b419da8696e02b781b18de2cf49e0472298b50e1f0711/pyaml-26.7.0.tar.gz"
      sha256 "11cda3a796efc6dbce0d56836be56cfd26289dad07bcd78e9904086729929c93"
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
        url "https://files.pythonhosted.org/packages/60/ac/b097a86a1e4a6098f3a79382643ab09d5733d87ccc864877ad1e12b49b70/hf_xet-1.5.2-cp38-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "045f84440c55cdeb659cf1a1dd48c77bcd0d2e93632e2fea8f2c3bdee79f38ed"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "hf-xet" do
        url "https://files.pythonhosted.org/packages/af/6b/832dd980af4b0c3ae0660e309285f2ffcdff2faa38129390dbb47aa4a3f9/hf_xet-1.5.2-cp38-abi3-manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "7db73c810500c54c6760be8c39d4b2e476974de85424c50063efc22fdda13025"
      end
    elsif Hardware::CPU.intel?
      resource "hf-xet" do
        url "https://files.pythonhosted.org/packages/d3/35/db860aa3a0780660324a506ad4b3d322ddc6ecbba4b9340aed0942cbf21c/hf_xet-1.5.2-cp38-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.whl", using: :nounzip
        sha256 "db78c39c83d6279daddc98e2238f373ab8980685556d42472b4ec51abcf03e8c"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/9c/12/3807e2b17d9eb71d3cb78ed2ba76869b05c637c9b9d6112e636098b0c97a/onnxruntime-1.28.0-cp313-cp313-macosx_14_0_arm64.whl", using: :nounzip
        sha256 "31410f544674f534c2f27348af52ef81682ca9c8719154bf4d48f0ef23823b1e"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/c0/23/b46045c3bf67a9cf54c12f5df0f018a422c65fbb9d6072b10071bebfaae2/onnxruntime-1.28.0-cp313-cp313-manylinux_2_27_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "f649dd6f6452d12a8059888aa489fe519e062e18793dac72b9efa0f9fdb64135"
      end
    elsif Hardware::CPU.intel?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/78/b6/8c5396e7894e77c5a7d1e026f3acb9dd39c4b5644e412e37a0055eaa3bc5/onnxruntime-1.28.0-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "54fa221d669282bd8f582708ce4c96010a7e9fb0661f9006b37fe2fedafb73fe"
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
