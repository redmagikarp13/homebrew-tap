cask "simpletranscribe" do
  version "1.0.1"
  sha256 "1ef71280bb1b5259d2dd543453028d5a075f7434163208fea7f2d8349572df87"

  url "https://github.com/redmagikarp13/simpletranscribe/releases/download/v#{version}/SimpleTranscribe-Mac.zip"
  name "Simple Transcribe"
  desc "An simple audio to text transcribe for MacOS, optimized for Apple Silicon Processors"
  homepage "https://github.com/redmagikarp13/simpletranscribe"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "SimpleTranscribe.app"

  zap trash: [
    "~/Library/Application Support/com.simpletranscribe.app",
    "~/Library/Caches/com.simpletranscribe.app",
    "~/Library/Preferences/com.simpletranscribe.app.plist",
  ]
end
