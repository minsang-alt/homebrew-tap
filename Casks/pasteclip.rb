cask "pasteclip" do
  version "1.1.8"
  sha256 "87bb8b8bee7fbcd12c7c37f2797c682e3e856a76bee94e26aef6c92dbd6cde58"

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
