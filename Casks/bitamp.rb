cask "bitamp" do
  version "0.5.0"
  sha256 "0f3b955c322f94130194319af9d9324f4b9ed20ff4fe947284ba33155707d049"

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
