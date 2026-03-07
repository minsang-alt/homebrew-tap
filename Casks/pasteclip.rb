cask "pasteclip" do
  version "1.0.7"
  sha256 "b7a037e8e4ac87751a6fdf1a4633182ab22f70d9910c42d8ac0733f7132fdd23"

  url "https://github.com/minsang-alt/PasteClip/releases/download/v#{version}/PasteClip-#{version}.dmg"
  name "PasteClip"
  desc "Lightweight clipboard manager for macOS"
  homepage "https://github.com/minsang-alt/PasteClip"

  depends_on macos: ">= :sonoma"

  app "PasteClip.app"

  zap trash: [
    "~/Library/Application Support/PasteClip",
    "~/Library/Preferences/com.minsang.PasteClip.plist",
  ]
end
