cask "cc-xcode-connect" do
  version "0.0.2"
  sha256 "9595f07014b21ab143176a29875e0ffdd0489c35d7c032bf33993159096aec11"

  url "https://github.com/GLinnik21/CCXcodeConnect/releases/download/#{version}/CCXcodeConnect-#{version}-macos.zip"
  name "CC Xcode Connect"
  desc "Connects Claude Code to Xcode via the IDE integration"
  homepage "https://github.com/GLinnik21/CCXcodeConnect"

  depends_on macos: ">= :sonoma"

  app "CCXcodeConnect.app"

  zap trash: [
    "~/Library/Preferences/com.beb.CCXcodeConnect.plist",
    "~/.claude/ide/*.lock",
  ]
end
