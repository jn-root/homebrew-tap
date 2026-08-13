class AudioSlicer < Formula
  include Language::Python::Virtualenv

  desc "Slice local and YouTube audio into clean, deterministic segments using ffmpeg"
  homepage "https://github.com/jn-root/audio-slicer"
  url "https://github.com/jn-root/audio-slicer/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "39b2735e154d1f61bb65bf7312254029cb17eae0e54e9e1e935bbb3d6dda97f5"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "python@3.11"

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/5d/40/e1e72872c6354b306daef1703549e8e83b4d43cfea356311bf722a043752/setuptools-83.0.0-py3-none-any.whl"
    sha256 "29b23c360f22f414dc7336bb39178cc7bcbf6021ed2733cde173f09dba19abb3"
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
    venv.pip_install(buildpath, build_isolation: false)

    (bin/"audio-slicer").write_env_script libexec/"bin/audio-slicer", PATH: "#{libexec}/bin:$PATH"
    (bin/"aslice").write_env_script libexec/"bin/aslice", PATH: "#{libexec}/bin:$PATH"
  end

  test do
    assert_predicate bin/"audio-slicer", :executable?
    assert_predicate bin/"aslice", :executable?
    assert_predicate libexec/"bin/yt-dlp", :executable?
    assert_match "audio-slicer 1.0.0", shell_output("#{bin}/audio-slicer --version")
    assert_match "audio-slicer 1.0.0", shell_output("#{bin}/aslice --version")

    help = shell_output("#{bin}/audio-slicer --help")
    assert_match "local or YouTube audio", help
    assert_match "--output-dir", help

    source = testpath/"test-tone.wav"
    output = testpath/"output"
    system formula_opt_bin("ffmpeg")/"ffmpeg", "-y", "-f", "lavfi", "-i",
           "sine=frequency=440:duration=1", source
    system bin/"audio-slicer", source, "--output-dir", output

    result = output/"test-tone"
    assert_path_exists result/"slices/test-tone-001.wav"
    assert_path_exists result/"source/test-tone.wav"
    assert_path_exists result/"manifest.json"
    assert_path_exists result/"README.md"
  end
end
