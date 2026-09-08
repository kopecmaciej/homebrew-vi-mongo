class ViMongo < Formula
  desc "Terminal User Interface for MongoDB"
  homepage "https://github.com/kopecmaciej/vi-mongo"
  version "v0.3.1"

  # Checksums for different platforms
  MACOS_ARM64_SHA256 = "4725c9dfc6433a23b385c537ab26ef95f4225c48872fe7032a0234b99d574b32"
  MACOS_X86_64_SHA256 = "7b0ccbf41de7dbea33d86b7584d1f0b863f20989c02676cf32667f40baa88a64"
  LINUX_ARM64_SHA256 = "efb83b255a573be8a02c37a00ec68a281f44f02a2e1d03aaadce0ea068fb58a9"
  LINUX_X86_64_SHA256 = "204e81a924670a20d88b5eee77ce5594c7bc8cf95df182b780cd3c9a944560ff"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.3.1/vi-mongo_Darwin_arm64.tar.gz"
      sha256 MACOS_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.3.1/vi-mongo_Darwin_x86_64.tar.gz"
      sha256 MACOS_X86_64_SHA256
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.3.1/vi-mongo_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.3.1/vi-mongo_Linux_x86_64.tar.gz"
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
