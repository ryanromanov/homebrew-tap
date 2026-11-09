cask "graupel" do
  version "0.3.1"
  sha256 "9ab7ff6ec28db3c108a41ba9ff3bae003bf6a13388b8fe6342cbafba8d5701f6"

  url "https://github.com/ryanromanov/graupel/releases/download/v#{version}/Graupel-#{version}.zip"
  name "Graupel"
  desc "Native text editor with language server support"
  homepage "https://github.com/ryanromanov/graupel"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Graupel.app"
  binary "#{appdir}/Graupel.app/Contents/SharedSupport/bin/graupel"

  zap trash: [
    "~/Library/Application Scripts/com.ryanromanov.Graupel",
    "~/Library/Application Support/Graupel",
    "~/Library/Autosave Information/com.ryanromanov.Graupel.plist",
    "~/Library/Caches/com.ryanromanov.Graupel",
    "~/Library/Preferences/com.ryanromanov.Graupel.plist",
    "~/Library/Saved Application State/com.ryanromanov.Graupel.savedState",
  ]
end
