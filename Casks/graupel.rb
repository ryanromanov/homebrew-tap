cask "graupel" do
  version "0.3.0"
  sha256 "55a21f313142987431bb08d59143a7176cb84218c375521aadfe832127a3f03f"

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
