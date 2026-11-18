cask "bitamp" do
  version "0.15.0"
  sha256 "1b10067c9de2b015895d0191b696a9aa9ac68697ccad8144fda8b08f8b3699ed"

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
