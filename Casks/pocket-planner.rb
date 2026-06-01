cask "pocket-planner" do
  version "2.5.2"
  sha256 "36463fb2752e5061d340f7be2a95418ba4d4a50f6f994ca816cc605f17316586"

  url "https://github.com/pocket-planner/desktop-app-releases/releases/download/v#{version}/Pocket-Planner-#{version}-arm64.dmg"
  name "Pocket Planner"
  desc "A minimal desktop app for weekly task planning"
  homepage "https://github.com/pocket-planner/desktop-app"

  app "Pocket Planner.app"

  caveats <<~EOS
    Because this app is self-signed/unsigned, you may need to clear the quarantine attribute after installation:
      xattr -cr "/Applications/Pocket Planner.app"
  EOS

  zap trash: [
    "~/Library/Application Support/pocket-planner",
    "~/Library/Application Support/pocket-planner-dev",
    "~/Library/Preferences/com.pocketplanner.desktop.plist",
    "~/Library/Saved Application State/com.pocketplanner.desktop.savedState",
  ]
end
