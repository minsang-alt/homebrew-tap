cask "clipbara" do
  version "1.3.0"
  sha256 "f2ec93d13c727c0673e4047b991bcf81cbbd2b981e33004e182f97dab3187817"

  url "https://github.com/mobrava/Clipbara/releases/download/v#{version}/Clipbara-v#{version}.dmg"
  name "Clipbara"
  desc "Free, open-source clipboard manager for macOS (formerly PasteClip)"
  homepage "https://github.com/mobrava/Clipbara"

  depends_on macos: ">= :sonoma"

  app "Clipbara.app"

  zap trash: [
    "~/Library/Application Support/com.minsang.PasteClip",
    "~/Library/Preferences/com.minsang.PasteClip.plist",
  ]
end
