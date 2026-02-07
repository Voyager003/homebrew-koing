cask "koing" do
  version "0.2.0"
  sha256 "7986a9aa910d7965250377d574dbec8395abe2591d59d38bda934693eec1b3d1"

  url "https://github.com/Voyager003/koing/releases/download/v#{version}/Koing-#{version}-arm64.zip"
  name "Koing"
  desc "macOS Korean-English auto-converter"
  homepage "https://github.com/Voyager003/koing"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Koing.app"
end
