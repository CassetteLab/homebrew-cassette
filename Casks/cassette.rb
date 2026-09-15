cask "cassette" do
  version "1.11.1"
  sha256 "8295b1c0269a2ae6c5d7a3eac581e7362b1dc530e1893ab14ca104b854af2509"

  url "https://github.com/CassetteLab/cassette/releases/download/v#{version}/Cassette-#{version}.dmg"
  name "Cassette"
  desc "Subsonic music client"
  homepage "https://getcassette.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
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
