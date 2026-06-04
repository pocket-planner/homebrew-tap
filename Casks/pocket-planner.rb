cask "pocket-planner" do
  version "2.7.0"
  sha256 "6e8e736b9b93dae724f81a7f86946d10f9026789449689410fb0a6b08b99f5d9"

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
