cask "fallow-writer" do
  version "1.0.0"
  sha256 "0ea3b47a4aebfb19e7544ffe043f4bb5db83d47d0a598efd487784d2699a4424"

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
