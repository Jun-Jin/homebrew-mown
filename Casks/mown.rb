cask "mown" do
  version "0.5.1"
  sha256 "22d2ef30151ab183cff0e053072cd3d123b0ecc7bc5cd8b33e103c138837c64c"

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
