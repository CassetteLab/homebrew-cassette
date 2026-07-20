cask "cassette" do
  version "1.9.2"
  sha256 "29d8408ebdab99e5d4c963860af35ea3ffbc7ba8a54a53594707755d817ce907"

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
