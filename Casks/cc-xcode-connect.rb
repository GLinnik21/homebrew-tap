cask "cc-xcode-connect" do
  version "0.0.3"
  sha256 "c949bf8eed775692c70ad8dac245a9b49cf5c29c34d8812bf7a7317dfba3867c"

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
