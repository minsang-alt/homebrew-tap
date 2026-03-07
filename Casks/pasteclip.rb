cask "pasteclip" do
  version "1.0.6"
  sha256 "7e357368997c2ba516b688378a944799621d6961123b3c78cb2c444510109d56"

  url "https://github.com/minsang-alt/PasteClip/releases/download/v#{version}/PasteClip-#{version}.dmg"
  name "PasteClip"
  desc "Lightweight clipboard manager for macOS"
  homepage "https://github.com/minsang-alt/PasteClip"

  depends_on macos: ">= :sonoma"

  app "PasteClip.app"

  zap trash: [
    "~/Library/Application Support/PasteClip",
    "~/Library/Containers/com.minsang.PasteClip",
    "~/Library/Preferences/com.minsang.PasteClip.plist",
  ]
end
