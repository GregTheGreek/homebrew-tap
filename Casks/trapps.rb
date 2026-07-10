cask "trapps" do
  version "0.4.0"
  sha256 "e0662059dd6052f1eaed2378b7c4020ef394b1368c4c376ee8a18ea8d70d58fb"

  url "https://github.com/GregTheGreek/trapps/releases/download/v#{version}/Trapps-#{version}.dmg"
  name "Trapps"
  desc "Menu bar app revealing every menu bar item, including ones behind the notch"
  homepage "https://github.com/GregTheGreek/trapps"

  depends_on macos: :ventura # macOS 13+ (bare symbol implies >=)

  # Trapps updates itself via Sparkle; tell brew so `brew upgrade` defers to it
  # rather than fighting the in-app updater.
  auto_updates true

  app "Trapps.app"

  zap trash: [
    "~/Library/Preferences/com.gregthegreek.trapps.plist",
    "~/Library/Saved Application State/com.gregthegreek.trapps.savedState",
  ]
end
