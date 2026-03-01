cask "pasteclip" do
  version "1.0.3"
  sha256 "7c5db575135342f825112ab650a33c82ebefa9f17bd922dcbde0727a9ed688e5"

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
