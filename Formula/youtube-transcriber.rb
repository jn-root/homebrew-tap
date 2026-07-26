class YoutubeTranscriber < Formula
  include Language::Python::Virtualenv

  desc "Downloads YouTube audio and creates local text transcripts"
  homepage "https://github.com/jn-root/youtube-transcriber"
  url "https://github.com/jn-root/youtube-transcriber/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "e93c25a03bf37dc084027ee5d68aa3a2898d2ad50167e58b0985682a5e6b1764"
  license "MIT"

  depends_on "pkgconf" => :build
  depends_on arch: :arm64
  depends_on "ffmpeg"
  depends_on "libyaml"
  depends_on macos: :sonoma
  depends_on "python@3.11"

  on_linux do
    depends_on :macos
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/5d/40/e1e72872c6354b306daef1703549e8e83b4d43cfea356311bf722a043752/setuptools-83.0.0-py3-none-any.whl"
    sha256 "29b23c360f22f414dc7336bb39178cc7bcbf6021ed2733cde173f09dba19abb3"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/35/f2287558c17e29fafc8ef3daf819bb9834061cfa43bff8014f7df7f63bdc/anyio-4.14.2-py3-none-any.whl"
    sha256 "9f505dda5ac9f0c8309b5e8bd445a8c2bf7246f3ce950121e45ea15bc41d1494"
  end

  resource "cython" do
    url "https://files.pythonhosted.org/packages/85/cc/8f06145ec3efa121c8b1b67f06a640386ddacd77ee3e574da582a21b14ee/cython-3.2.4-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "ff9af2134c05e3734064808db95b4dd7341a39af06e8945d05ea358e1741aaed"
  end

  resource "av" do
    url "https://files.pythonhosted.org/packages/ae/a4/570a5a35c8638aba01e739925846c35fdd6b0756a15526766d0a4dd3b7df/av-18.0.0.tar.gz"
    sha256 "4ef7e72c3d3a872584a1215173b16e0226811037f40dcdbf75992631098df1ba"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/0b/a7/71ac2cff56fec219ed242bb11b8efb69fcc4bec75db06fb7bfe35de520e6/certifi-2026.7.22-py3-none-any.whl"
    sha256 "62f22742b58a1a33014a2b6b706588a8d7e2a88ae7bd1a6ebe8c992928483775"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/fb/e2/79c688af8b210d232694e31e59da9f6ec747bae31c3f5946e4e9b98860d5/click-8.4.2-py3-none-any.whl"
    sha256 "e6f9f66136c816745b9d65817da91d61d957fb16e02e4dcd0552553c5a197b76"
  end

  resource "ctranslate2" do
    url "https://files.pythonhosted.org/packages/86/c4/0e450796f90e54f3325697fc67db4f4ecd397aef96d7b3924e26fb8bd04b/ctranslate2-4.8.1-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "4c2db633a06e3b34bbfb72fd26eee58053d9df1f9c1610ac4df3a6a1e25af7d7"
  end

  resource "faster-whisper" do
    url "https://files.pythonhosted.org/packages/05/99/49ee85903dee060d9f08297b4a342e5e0bcfca2f027a07b4ee0a38ab13f9/faster_whisper-1.2.1-py3-none-any.whl"
    sha256 "79a66ad50688c0b794dd501dc340a736992a6342f7f95e5811be60b5224a26a7"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/06/79/b4c714bef36bc4ec2beeae1e0c124f0223888cd8c6feb1cdc56038116920/filelock-3.32.0-py3-none-any.whl"
    sha256 "d396bea984af47333ef05e50eae7eff88c84256de6112aea0ec48a233c064fe3"
  end

  resource "flatbuffers" do
    url "https://files.pythonhosted.org/packages/e8/2d/d2a548598be01649e2d46231d151a6c56d10b964d94043a335ae56ea2d92/flatbuffers-25.12.19-py2.py3-none-any.whl"
    sha256 "7634f50c427838bb021c2d66a3d1168e9d199b0607e6329399f04846d42e20b4"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/e5/22/4222d7ddf3da30f363edaa98e329c2bce6c65497c9cb2810931c8b2c0fbc/fsspec-2026.6.0-py3-none-any.whl"
    sha256 "02e0b71817df9b2169dc30a16832045764def1191b43dcff5bb85bdee212d2a1"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/60/ac/b097a86a1e4a6098f3a79382643ab09d5733d87ccc864877ad1e12b49b70/hf_xet-1.5.2-cp38-abi3-macosx_11_0_arm64.whl"
    sha256 "045f84440c55cdeb659cf1a1dd48c77bcd0d2e93632e2fea8f2c3bdee79f38ed"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/5f/c3/aeaaf3911d2529614be18d1c8b5496afc185560e76568063d517283318af/huggingface_hub-1.24.0-py3-none-any.whl"
    sha256 "6ed4120a84a6beec900640aa7e346bd766a6b7341e41526fef5dc8bd81fb7d59"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/1e/5e/d4e9f1a599fb8e573b7b87160658329fbf28d19eac2718f51fc3def3aa5a/idna-3.18-py3-none-any.whl"
    sha256 "7f952cbe720b688055e3f87de14f5c3e5fdaa8bc3928985c4077ca689de849a2"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/ad/40/40a40ee0ddf7ceb782c49af278894b686e586d65d8c1889c8b5da01a3d7d/numpy-2.4.6-cp311-cp311-macosx_14_0_arm64.whl"
    sha256 "4cfe66903cc32a9921a6733d96b19bb6abf310397581bbad89c228f5abaf0ee8"
  end

  resource "onnxruntime" do
    url "https://files.pythonhosted.org/packages/17/4d/5014667e2a3a77d6e1b74cc3d88948d06163b8e0a33a84c85073322b5dec/onnxruntime-1.28.0-cp311-cp311-macosx_14_0_arm64.whl"
    sha256 "f5c5daabd28aad610f83fdcf32acec8fb57e6adc6c6a39fe2a3c755db957b410"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/b2/87e62e8c3e2f4b32e5fe99e0b86d576da1312593b39f47d8ceef365e95ed/packaging-26.2-py3-none-any.whl"
    sha256 "5fc45236b9446107ff2415ce77c807cee2862cb6fac22b8a73826d0693b0980e"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/10/03/8aeeb7458d22546bf64b5250ca1daeb5ff757d900e8e4a7476c6f0db843e/protobuf-7.35.1-cp310-abi3-macosx_10_9_universal2.whl"
    sha256 "24f857477359a85c0c235261b8ba905fd51b2562f4a64ca1df5473f29850cbf6"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/16/19/13de8e4377ed53079ee996e1ab0a9c33ec2faf808a4647b7b4c0d46dd239/pyyaml-6.0.3-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "652cb6edd41e718550aad172851962662ff2681490a8a711af6a4d288dd96824"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/e2/6a/068ed9f6e444c9d7e9d55ce134181325700f3d7f30410721bdc8f848d727/tokenizers-0.23.1-cp310-abi3-macosx_11_0_arm64.whl"
    sha256 "e0948bbb1ac1d7cdfc9fb6d62c596e3b7550036ad60ecd654a66ad273326324e"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/01/50/5817619a0fca56aff06383dbfde7ae017b3ca383915b3f1e4713164273cf/tqdm-4.69.1-py3-none-any.whl"
    sha256 "0a654b96f7a2660cceb615b56f307ec2bef96c515409014a429a561981ab52b4"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "yt-dlp" do
    url "https://files.pythonhosted.org/packages/f9/8a/cd4c9b02c10c563adfe78118310129641900e1cd6de888cfae2452072696/yt_dlp-2026.7.4-py3-none-any.whl"
    sha256 "f11f2b11d5a8ac4059f9bdf29fa4407dc7c6bb00c5097e95ca22a7a9db518266"
  end

  def install
    venv = virtualenv_create(libexec, "python3.11")
    resources.each do |resource|
      resource.stage do
        wheel = Pathname.glob("*.whl").first
        venv.pip_install(wheel || Pathname.pwd, build_isolation: false)
      end
    end
    venv.pip_install_and_link(buildpath, build_isolation: false)
    bin.install_symlink libexec/"bin/yt-dlp"
  end

  test do
    assert_predicate bin/"yt-dlp", :executable?
    assert_predicate bin/"yt-transcribe", :executable?
    assert_match "2026.07.04", shell_output("#{bin}/yt-dlp --version")
    assert_match "yt-transcribe 1.0.4", shell_output("#{bin}/yt-transcribe --version")

    help = shell_output("#{bin}/yt-transcribe --help")
    assert_match "audio", help
    assert_match "transcripts", help

    error = shell_output("#{bin}/yt-transcribe 2>&1", 2)
    assert_match "the following arguments are required: url", error
  end
end
