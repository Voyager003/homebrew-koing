class Koing < Formula
  desc "macOS Korean-English auto-converter"
  homepage "https://github.com/Voyager003/koing"
  url "https://github.com/Voyager003/koing/releases/download/v0.2.0/koing-0.2.0-arm64-apple-darwin.tar.gz"
  sha256 "83ba195817cd3955ff23ade6b5e9045459d70b095d2487cc64480a4c8fa544aa"
  version "0.2.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "bin/koing"
  end

  test do
    assert_match "koing", shell_output("#{bin}/koing --help 2>&1", 1)
  end
end
