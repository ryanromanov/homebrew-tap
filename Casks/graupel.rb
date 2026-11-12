cask "graupel" do
  version "0.4.3"
  sha256 "ef8874c43e750c4633b2477c1e46000f92a51eed918a44cfcb4f932b7b9047a5"

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
