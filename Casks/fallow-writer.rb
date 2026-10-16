cask "fallow-writer" do
  version "0.1.0"
  sha256 "527e27905a25a2b2d9a8de188ed7852c5544a3b31d878123b91a19cb45a5fcc9"

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
