cask "pasteclip" do
  version "1.1.1"
  sha256 "c1dd523a20a7bad6a199794a9a87f36096f617a5cc945005db33304f7e88666c"

  url "https://github.com/minsang-alt/PasteClip/releases/download/v#{version}/PasteClip-v#{version}.dmg"
  name "PasteClip"
  desc "Lightweight clipboard manager for macOS"
  homepage "https://github.com/minsang-alt/PasteClip"

  depends_on macos: ">= :sonoma"

  app "PasteClip.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/PasteClip.app"],
                   sudo: true
  end

  zap trash: [
    "~/Library/Application Support/PasteClip",
    "~/Library/Preferences/com.minsang.PasteClip.plist",
  ]
end
