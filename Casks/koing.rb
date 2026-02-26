cask "koing" do
  version "0.3.10"
  sha256 "6898d7029cc246646fbfaba7d6acbe9644a9e67864299004f8598c983fa2f067"

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
    # 재설치/업그레이드 시 이전 빌드의 stale TCC 항목 제거
    system_command "/usr/bin/tccutil",
                   args: ["reset", "Accessibility", "com.koing.app"]
  end
end
