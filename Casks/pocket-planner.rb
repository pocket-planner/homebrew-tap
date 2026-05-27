cask "pocket-planner" do
  version "1.21.0"
  sha256 "b0a0d2637e3cf814516af62bca59a3cfb38f8bc2efdc05554066f3af4cc91f8a"

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
