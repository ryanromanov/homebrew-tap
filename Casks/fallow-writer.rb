cask "fallow-writer" do
  version "0.3.0"
  sha256 "ee2be489e13cb6a20094564e8b2dfdef13cc1d1baf960dbcb3ad6523ce93fa97"

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
