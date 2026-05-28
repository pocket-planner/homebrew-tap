cask "pocket-planner" do
  version "2.0.2"
  sha256 "cd7b10920935469b46cdc4440d064db02643ddb0d4610ae125d7127b89a787c2"

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
