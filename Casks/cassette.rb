cask "cassette" do
  version "1.12.0"
  sha256 "fb8e85c186b202a8a1761314b8b1a3c7d4e8b15807ab031b9363c82142f6e73c"

  url "https://github.com/CassetteLab/cassette/releases/download/v#{version}/Cassette-#{version}.dmg",
      verified: "github.com/CassetteLab/cassette/"
  name "Cassette"
  desc "Subsonic music client"
  homepage "https://getcassette.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)*)\+\d+$/i)
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Cassette.app"

  zap trash: [
    "~/Library/Application Support/fr.mathieu-dubart.Cassette",
    "~/Library/Caches/fr.mathieu-dubart.Cassette",
    "~/Library/Preferences/fr.mathieu-dubart.Cassette.plist",
  ]
end
