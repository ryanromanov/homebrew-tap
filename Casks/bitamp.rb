cask "bitamp" do
  version "0.10.0"
  sha256 "8b5f86b203d6b3079872121b10889a58f53e7bd207c46c74a750cff2ba80b7ca"

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
