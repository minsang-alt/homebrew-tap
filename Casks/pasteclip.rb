cask "pasteclip" do
  version "1.0.4"
  sha256 "550186e1493dcf1057ed2262c4aae56cb843bac7e18db8b92677c35340872909"

  url "https://github.com/minsang-alt/PasteClip/releases/download/v#{version}/PasteClip-#{version}.dmg"
  name "PasteClip"
  desc "Lightweight clipboard manager for macOS"
  homepage "https://github.com/minsang-alt/PasteClip"

  depends_on macos: ">= :sequoia"

  app "PasteClip.app"

  zap trash: [
    "~/Library/Application Support/PasteClip",
    "~/Library/Containers/com.minsang.PasteClip",
    "~/Library/Preferences/com.minsang.PasteClip.plist",
  ]
end
