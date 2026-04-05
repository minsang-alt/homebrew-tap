cask "pasteclip" do
  version "1.1.3"
  sha256 "47fae7a3a8a757f887ce8f6e0d17253040e04f21783cb5e890884821a4b08706"

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
