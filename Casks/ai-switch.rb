cask "ai-switch" do
  version "0.1.0"

  on_arm do
    url "https://github.com/ji233-Sun/ai-switch/releases/download/v1.2.0/ai-switch_#{version}_aarch64.dmg"
    sha256 "bf496946fbc7b3e69ba9bff62a146b1afd507ea88e502aebcff0f5493625a4b3"
  end

  on_intel do
    url "https://github.com/ji233-Sun/ai-switch/releases/download/v1.2.0/ai-switch_#{version}_x64.dmg"
    sha256 "c517d3f868903b93371cd8463f67f4ab6eaa37c46f0e745909d9ef49d57aac57"
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
