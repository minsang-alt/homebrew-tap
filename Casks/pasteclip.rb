cask "pasteclip" do
  version "1.2.0"
  sha256 "9fcb1ac2d071a722a65cd8334c185c79958f2a9cce3623929685fc973307eb48"

  url "https://github.com/mobrava/Clipbara/releases/download/v#{version}/Clipbara-v#{version}.dmg"
  name "PasteClip (renamed to Clipbara)"
  desc "Renamed to Clipbara - install the clipbara cask instead"
  homepage "https://github.com/mobrava/Clipbara"

  deprecate! date: "2026-08-20", because: "it was renamed to clipbara"

  depends_on macos: ">= :sonoma"

  app "Clipbara.app"

  caveats "PasteClip has been renamed to Clipbara. Please install with:\n  brew install --cask mobrava/tap/clipbara"
end
