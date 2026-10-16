cask "fallow-writer" do
  version "0.2.0"
  sha256 "fac88bee755b899875d512656878bd45ff569c167ae5e8c308b93496bcfbbb23"

  url "https://github.com/ryanromanov/fallow-writer/releases/download/v#{version}/Fallow-#{version}.zip"
  name "Fallow"
  desc "Distraction-free writing app with ambient sound"
  homepage "https://github.com/ryanromanov/fallow-writer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Fallow.app"

  # Fallow is sandboxed, so everything it keeps (settings, unsaved drafts) is in its container.
  zap trash: [
    "~/Library/Application Scripts/com.ryanromanov.Fallow",
    "~/Library/Containers/com.ryanromanov.Fallow",
  ]
end
