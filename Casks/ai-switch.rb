cask "ai-switch" do
  version "0.1.0"

  on_arm do
    url "https://github.com/ji233-Sun/ai-switch/releases/download/v1.1.0/ai-switch_#{version}_aarch64.dmg"
    sha256 "f1971acc24fe0b0fd8345721beb044fe7365be54225ff511db8d4fcf70fbb2bb"
  end

  on_intel do
    url "https://github.com/ji233-Sun/ai-switch/releases/download/v1.1.0/ai-switch_#{version}_x64.dmg"
    sha256 "816ed7c609c5e9d862db9f9ed51040c2a493863cc26ff7a8b5cf6f465bbe86ad"
  end

  name "AI Switch"
  desc "Desktop application for AI model switching"
  homepage "https://github.com/ji233-Sun/ai-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ai-switch.app"

  zap trash: [
    "~/Library/Application Support/com.ai-switch.app",
    "~/Library/Caches/com.ai-switch.app",
    "~/Library/Preferences/com.ai-switch.app.plist",
    "~/Library/Saved Application State/com.ai-switch.app.savedState",
  ]
end
