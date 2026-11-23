cask "inero-movie" do
  version "0.1.1"
  sha256 "d9053a1b37c7c36f8365a9b31a8c5dec8deb3cfaf62aa34b91c01cc279240c24"

  url "https://github.com/vseriousv/inero-movie-releases/releases/download/v#{version}/Inero-Movie-#{version}.dmg"
  name "Inero Movie"
  desc "Reel editor that takes one idea to a published short video"
  homepage "https://github.com/vseriousv/inero-movie-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Inero Movie.app"

  zap trash: [
    "~/Library/Application Support/Inero Movie",
    "~/Library/Caches/com.gavrilovlog.ineromovie",
    "~/Library/HTTPStorages/com.gavrilovlog.ineromovie",
    "~/Library/Preferences/com.gavrilovlog.ineromovie.plist",
    "~/Library/Saved Application State/com.gavrilovlog.ineromovie.savedState",
  ]
end
