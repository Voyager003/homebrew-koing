cask "koing" do
  version "0.3.2"
  sha256 "b71c61e79f7c88c719083f9a41baef8a8e65e00c4ee5f456254305b87b7380c5"

  url "https://github.com/Voyager003/koing/releases/download/v#{version}/Koing-#{version}.zip"
  name "Koing"
  desc "macOS Korean-English auto-converter"
  homepage "https://github.com/Voyager003/koing"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Koing.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/Koing.app"]
  end
end
