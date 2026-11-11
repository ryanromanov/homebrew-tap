cask "graupel" do
  version "0.4.2"
  sha256 "442005ebd4f338cbb5776cb26cc9a36fcecf1966e7eb329cfa2194104a296ed9"

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
