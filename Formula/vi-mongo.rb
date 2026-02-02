class ViMongo < Formula
  desc "Terminal User Interface for MongoDB"
  homepage "https://github.com/kopecmaciej/vi-mongo"
  version "v0.1.33"

  # Checksums for different platforms
  MACOS_ARM64_SHA256 = "36329934b84e6b61efe0cad5e6e97ffa81d1eecca3c48c4c2ea517e95a30c1aa"
  MACOS_X86_64_SHA256 = "d563c356c94c0c221de7442ef3ff070c368d414183b0e26b5f2eb20cd041f7c8"
  LINUX_ARM64_SHA256 = "8f973da288f0837bd899b9ad3f398f38be5dcb8d93d220074f006180f0f5cf5d"
  LINUX_X86_64_SHA256 = "627c784a3cd1fba411e6acd451fefd0f14edda0918aadd55b99274989ba4c586"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.33/vi-mongo_Darwin_arm64.tar.gz"
      sha256 MACOS_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.33/vi-mongo_Darwin_x86_64.tar.gz"
      sha256 MACOS_X86_64_SHA256
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.33/vi-mongo_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.33/vi-mongo_Linux_x86_64.tar.gz"
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
