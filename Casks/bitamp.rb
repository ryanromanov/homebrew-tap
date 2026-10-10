cask "bitamp" do
  version "0.6.1"
  sha256 "b4a76d681571c4de126517f51a773a2f36dfb9d89c9da23232396e93b127a0b7"

  url "https://github.com/ryanromanov/Bitamp/releases/download/v#{version}/Bitamp-#{version}.zip"
  name "Bitamp"
  desc "Skinnable audio player with an old-school look"
  homepage "https://github.com/ryanromanov/Bitamp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Bitamp.app"

  zap trash: [
    "~/Library/Application Support/Bitamp",
    "~/Library/Caches/com.ryanromanov.Bitamp",
    "~/Library/Caches/dev.bitamp.Bitamp",
    "~/Library/Preferences/com.ryanromanov.Bitamp.plist",
    "~/Library/Preferences/dev.bitamp.Bitamp.plist",
    "~/Library/Saved Application State/com.ryanromanov.Bitamp.savedState",
    "~/Library/Saved Application State/dev.bitamp.Bitamp.savedState",
  ]
end
