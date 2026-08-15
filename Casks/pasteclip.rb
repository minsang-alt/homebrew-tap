cask "pasteclip" do
  version "1.1.9"
  sha256 "7fcefd477dd704edd008f99d11996538693996bfad416ba344122de15223eda6"

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
