class ViMongo < Formula
  desc "Terminal User Interface for MongoDB"
  homepage "https://github.com/kopecmaciej/vi-mongo"
  version "v0.1.35"

  # Checksums for different platforms
  MACOS_ARM64_SHA256 = "1ff64b3a3b795442ef2f84102a1c7a614c22e4384f306b314dcaaee890f8ee27"
  MACOS_X86_64_SHA256 = "d4c2e1dc8289832264b36bb91a5949e823ea166e6ec7bbb8930dbd551a43ac0d"
  LINUX_ARM64_SHA256 = "46bc461870b8368e8e022731036971043beac97c0b26c0e279ae13af55777c4a"
  LINUX_X86_64_SHA256 = "d931f2bd970dfc107add0423a9064f835f897dfc7c23aa2304776f5792d4b091"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.35/vi-mongo_Darwin_arm64.tar.gz"
      sha256 MACOS_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.35/vi-mongo_Darwin_x86_64.tar.gz"
      sha256 MACOS_X86_64_SHA256
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.35/vi-mongo_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.35/vi-mongo_Linux_x86_64.tar.gz"
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
