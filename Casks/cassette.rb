cask "cassette" do
  version "1.10.0"
  sha256 "e4b3ed1dc17226f6a8ff2a8623d1bcd416559026dbe8ea2866ad8402611ae3fe"

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
