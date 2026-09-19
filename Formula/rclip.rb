class Rclip < Formula
  include Language::Python::Virtualenv

  desc "Semantic photo search for the command-line"
  homepage "https://github.com/yurijmikhalevich/rclip"
  url "https://files.pythonhosted.org/packages/58/ea/dbf50bd253366b90bd36dfe59061eb73cdad8bca067f887af16a9eef0335/rclip-4.0.0.tar.gz"
  sha256 "41b243275a705fb3ef6dab8cb909c790a812075d83c2ba8c9463ddcd53eb613f"
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
    url "https://files.pythonhosted.org/packages/fe/0f/e83fdd856da8fca26bf78d71709ebd120432a0ce535e72b9597cab1eb5bf/huggingface_hub-1.32.0.tar.gz"
    sha256 "ed70a45498abe86039df7c2f4e5f7575de524be908d3840e8f828d5525eafd6a"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/cb/0e/3a246dbf05666918bd3664d9d787f84a9108f6f43cc953a077e4a7dfdb7e/regex-2026.4.4.tar.gz"
    sha256 "e08270659717f6973523ce3afbafa53515c4dc5dcad637dc215b6fd50f689423"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "textual" do
    url "https://files.pythonhosted.org/packages/00/21/39a76b01bd5eea82a04baaca7580e105d8c59450df03998345bb2cfb307b/textual-8.2.8.tar.gz"
    sha256 "3f106a9fbc73e39dd266c9712432087de78a6d644084c7c241d6a25c3169115b"
  end

  resource "textual-image" do
    url "https://files.pythonhosted.org/packages/c2/e7/c82ea0604874b6d51d5717a0911061ae5810e36dad2e4d2b11fa7d54cdaa/textual_image-0.12.0.tar.gz"
    sha256 "fdd0b5ff9c8a99740bc360a99ce014d563fa97d07a5b49b472470809f57c0a74"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/0d/ea/b2a5bd54b28a324dae8211928b2d730b6547500342c7e6c6dea08bd0a485/tqdm-4.70.1.tar.gz"
    sha256 "cefd0eca11b2a37a3aee776544d4f4ae913f02688135b5556b8788dfa474afc4"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/3d/7a/f98d4ada7c499565ab0c0fcef28a4e54fafa72b8228a6309803c80493c92/wcwidth-0.8.4.tar.gz"
    sha256 "2dae09efa25253ae2874188e86d6861af3b1652aef4118cdf3f0bda288a957fb"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0e/7fa0ef50764b67090eca4114772a2abf8b6148198475e54c660b97caeee6/click-8.5.0.tar.gz"
    sha256 "ba0d2089de75ea0310e2dde03160e6ca10009947fb95a182f9b54021bb272e34"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/5e/ac/8c98b17ee3900147b38ef7884a1e590b070b63f0d59fd8b46ef0205f4576/filelock-4.0.0.tar.gz"
    sha256 "3611eca5d818ca9b00ec3cc7db1dcfe1e2aafc8d44fb4920d8cf60ad1f6bfda6"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/77/cd/9be253869fc42e764de7f3dedd6969af7d44ff9c3375214a3442a6f3fc08/fsspec-2026.9.0.tar.gz"
    sha256 "0f08147951c8cb31d844c3547d631053b127863b60be04cf06e121333ee0e2fe"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
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
    url "https://files.pythonhosted.org/packages/d9/89/5b8517baa72f84a67b8a307ba953c91057af618bf40bf676f3c03551f8f0/protobuf-7.36.2.tar.gz"
    sha256 "497d0463ff3316681da6c0b9e8d06cb465d61abce00b613ab42226175644d1bb"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e5/3f/143b048436775b0f76ac3eec145c019e8173ccc2885c8f20319b996d5e83/charset_normalizer-3.5.1.tar.gz"
    sha256 "6117b84ea48435e5356dc737f5121485c30920ba43375fa7b434fd753df0eac3"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
  end

  resource "mdit-py-plugins" do
    url "https://files.pythonhosted.org/packages/59/fc/f8d0863f8862f25602c0404d75568e89fb6b4109804645e5cdfb1be5cf56/mdit_py_plugins-0.6.1.tar.gz"
    sha256 "a2bca0f039f39dbd35fb74ae1b5f998608c437463371f0ff7f49a19a17a114d0"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/89/24/92d90bebedf197eb15b144367ce6fd4ad2de571927cd09dde190a36db8fc/platformdirs-4.11.10.tar.gz"
    sha256 "9cd351c078ccf7dda1fdc5f8ccb9d8f5258984c63990e6df3627dde0b70b51d0"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a9/d2/f4d173e22df740bc37b1db102b386ba719b66e95b0f0d751f556b387e6d2/anyio-4.15.1.tar.gz"
    sha256 "9f28306018cbd6d329e64a36d58256edff76dd996fe423bc957326e578b82a94"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "linkify-it-py" do
    url "https://files.pythonhosted.org/packages/45/98/7a1a5f31fd5c7ba93e963b168e244b8e3dd705b3d2a718e3c3307583bf57/linkify_it_py-2.2.0.tar.gz"
    sha256 "907acd2d17ac1fbb9ddb62c8957ccbd6158cac602231a15c3b0cd1e215f03cee"
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
      url "https://files.pythonhosted.org/packages/d6/b2/42f4524e5479b090040b5fd8bb316dd8c65a079bb6492494ce2079dc91be/cattrs-26.2.0.tar.gz"
      sha256 "3cf49f69df8326bcf17a3cb3d3d3ec4a856858fe3a7473746c9044c317d3ba55"
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
        url "https://files.pythonhosted.org/packages/4b/69/55b8dcf636142ae660fec1869fcac14c4da2e8412e14d6eee1523be77e9f/hf_xet-1.6.0-cp38-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "f0906082d9932ae0c0057fa194041c22b4e2cdb46b2592ef3b91f020d62a081a"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "hf-xet" do
        url "https://files.pythonhosted.org/packages/9a/69/1f0cbc2fb22ae6082d094f743d1b8945a3f36f6089cb95f42b7ee348cda7/hf_xet-1.6.0-cp38-abi3-manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "0e6e21fa3cdfcdcd76748564bf593870a5e013f47d97cf10aed63aa222cff5b7"
      end
    elsif Hardware::CPU.intel?
      resource "hf-xet" do
        url "https://files.pythonhosted.org/packages/67/4e/a28359bf1c1ecf11eba22123168c138698f7cb576ac678f5a2e16cd5da08/hf_xet-1.6.0-cp38-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.whl", using: :nounzip
        sha256 "d62671bb130879cef0ee4c9ebe47a14af6c66ec53e6d84dc15936e5ffdfac82f"
      end
    else
      raise "Unknown CPU architecture, only amd64 and arm64 are supported"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/f0/75/508454c5d01f31641dabc597fe559594c931a520a2673031179319d0afd8/onnxruntime-1.30.0-cp313-cp313-macosx_14_0_arm64.whl", using: :nounzip
        sha256 "05e4fc41711d1f4abd19a9124b5be7a65a506cb2670a7f14b16162ef13c58134"
      end
    else
      raise "Unknown CPU architecture, only arm64 is supported on macOS"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/89/06/e603c71f43f4fe3fd156a053af79cbed6e27a2c649f0988a67d97fedd39f/onnxruntime-1.30.0-cp313-cp313-manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "5327cf6aa15a02bad805fac8bd6882a62571e8b72f6f2938a8f37e6bd1966ce9"
      end
    elsif Hardware::CPU.intel?
      resource "onnxruntime" do
        url "https://files.pythonhosted.org/packages/f1/a1/ede48ab5dc54907a2999362777f541e132639fb06628ded1932058aa8a36/onnxruntime-1.30.0-cp313-cp313-manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "86f940afc801ea9681a4da8af84fbe95e1d9ea7d80903952cc1bfad54faad38f"
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

    system "python3.13", "-m", "pip", "--python=#{libexec}/bin/python", "check"

    system libexec/"bin/python", "-m", "rclip._compliance", "collect",
           "--root", libexec, "--output", share/"doc/rclip",
           "--policy", buildpath/"compliance/policy.toml",
           "--common-notices", buildpath/"compliance/notices"
    system libexec/"bin/python", "-m", "rclip._compliance", "verify",
           "--root", libexec, "--legal-dir", share/"doc/rclip",
           "--policy", buildpath/"compliance/policy.toml",
           "--output", share/"doc/rclip/homebrew-compliance.json"
  end

  test do
    output = shell_output("#{bin}/rclip cat")
    assert_match("score\tfilepath", output)
  end
end
