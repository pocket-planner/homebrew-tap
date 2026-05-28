cask "pocket-planner" do
  version "2.0.5"
  sha256 "4018642c64d29769ebb6e4e38eca6cec3f9ee4f5c88e122a33ddb22638c32fcb"

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
