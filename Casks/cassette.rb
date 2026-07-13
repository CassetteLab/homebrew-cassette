cask "cassette" do
  version "1.8.4"
  sha256 "f63e390479bde2e4d263250b045feb02db3fb5c118ffe6d0553f13967ec66c61"

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
