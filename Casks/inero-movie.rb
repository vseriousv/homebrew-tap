cask "inero-movie" do
  version "0.1.2"
  sha256 "bf84fce2c8675714ea2ffd6b05adbc1f2264ff5a53e2e6d4c79bcb26c0391a8d"

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
  binary "#{appdir}/Inero Movie.app/Contents/Resources/inero"

  zap trash: [
    "~/Library/Application Support/Inero Movie",
    "~/Library/Caches/com.gavrilovlog.ineromovie",
    "~/Library/HTTPStorages/com.gavrilovlog.ineromovie",
    "~/Library/Preferences/com.gavrilovlog.ineromovie.plist",
    "~/Library/Saved Application State/com.gavrilovlog.ineromovie.savedState",
  ]
end
