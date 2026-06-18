cask "mown" do
  version "0.5.0"
  sha256 "c21702734686ed3967e47500bcc63d4d607f109467f5fe202a1f62b7e6a14b4a"

  url "https://github.com/Jun-Jin/Mown/releases/download/v#{version}/Mown-#{version}.zip"
  name "Mown"
  desc "Fast, offline Markdown editor with zero telemetry"
  homepage "https://github.com/Jun-Jin/Mown"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Mown.app"
  # The app bundles a `mown` CLI (opens files as tabs); expose it on PATH.
  binary "#{appdir}/Mown.app/Contents/Resources/mown"

  zap trash: [
    "~/Library/Caches/com.mown.Mown",
    "~/Library/HTTPStorages/com.mown.Mown",
    "~/Library/Preferences/com.mown.Mown.plist",
    "~/Library/Saved Application State/com.mown.Mown.savedState",
    "~/Library/WebKit/com.mown.Mown",
  ]
end
