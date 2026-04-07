cask "pasteclip" do
  version "1.1.7"
  sha256 "6ab4f287268b23c23d62f123027f9afc235df9e7611d8a69c4aec774fb6a4ac1"

  url "https://github.com/minsang-alt/PasteClip/releases/download/v#{version}/PasteClip-v#{version}.dmg"
  name "PasteClip"
  desc "Lightweight clipboard manager for macOS"
  homepage "https://github.com/minsang-alt/PasteClip"

  depends_on macos: ">= :sonoma"

  app "PasteClip.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/PasteClip.app"]
    system_command "/usr/bin/open",
                   args: ["#{appdir}/PasteClip.app"]
  end

  zap trash: [
    "~/Library/Application Support/PasteClip",
    "~/Library/Preferences/com.minsang.PasteClip.plist",
  ]
end
