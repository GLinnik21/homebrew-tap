cask "cc-xcode-connect" do
  version "0.0.1"
  sha256 "7d499d32d5147f4d8668159500216d3842c8bf49c8ab7d0cf3b315897540ef11"

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
