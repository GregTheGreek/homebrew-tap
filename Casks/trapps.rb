cask "trapps" do
  version "0.2.0"
  sha256 "be74980243a1b9c1df719fd9fbeb1df01fe8c150485de3029f8ff25dc3653b74"

  url "https://github.com/GregTheGreek/trapps/releases/download/v#{version}/Trapps-#{version}.zip"
  name "Trapps"
  desc "Menu bar app revealing every menu bar item, including ones behind the notch"
  homepage "https://github.com/GregTheGreek/trapps"

  depends_on macos: ">= :ventura" # macOS 13+

  app "Trapps.app"

  zap trash: [
    "~/Library/Preferences/com.gregthegreek.trapps.plist",
    "~/Library/Saved Application State/com.gregthegreek.trapps.savedState",
  ]
end
