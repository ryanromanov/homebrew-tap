cask "graupel" do
  version "0.4.0"
  sha256 "b69f435d69c2a98e93e0eceebd0a78cbddb9b07c88adab67fb0b042c9d7377a7"

  url "https://github.com/ryanromanov/graupel/releases/download/v#{version}/Graupel-#{version}.zip"
  name "Graupel"
  desc "Native text editor with language server support"
  homepage "https://github.com/ryanromanov/graupel"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
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
