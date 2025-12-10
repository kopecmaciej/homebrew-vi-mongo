class ViMongo < Formula
  desc "Terminal User Interface for MongoDB"
  homepage "https://github.com/kopecmaciej/vi-mongo"
  version "v0.1.32"

  # Checksums for different platforms
  MACOS_ARM64_SHA256 = "d479f75306e79ee3077755b72960d30ad7267e3378f93379f457b3e66554f3be"
  MACOS_X86_64_SHA256 = "209626d2acd751d60767fa4058bd1024c9ad5f416ab06c12f992e0248b107605"
  LINUX_ARM64_SHA256 = "5cc4d55bf11800131656eaa3a94a0e9c539bfb26215188dfcc5cb455e59652d6"
  LINUX_X86_64_SHA256 = "962fdbce89f621db8a4db922da62c343242ff2d7a8f7209eede1be72561cedc1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.32/vi-mongo_Darwin_arm64.tar.gz"
      sha256 MACOS_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.32/vi-mongo_Darwin_x86_64.tar.gz"
      sha256 MACOS_X86_64_SHA256
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.32/vi-mongo_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.32/vi-mongo_Linux_x86_64.tar.gz"
      sha256 LINUX_X86_64_SHA256
    end
  end

  def install
    bin.install "vi-mongo"
  end

  test do
    system "#{bin}/vi-mongo", "--version"
  end
end 
