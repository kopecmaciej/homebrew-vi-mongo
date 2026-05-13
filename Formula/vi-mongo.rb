class ViMongo < Formula
  desc "Terminal User Interface for MongoDB"
  homepage "https://github.com/kopecmaciej/vi-mongo"
  version "v0.2.2"

  # Checksums for different platforms
  MACOS_ARM64_SHA256 = "f177ae40b853f4bf330f727a96246d93ee60a2f44b1b3f68702603312c392e1e"
  MACOS_X86_64_SHA256 = "c2b848f5b6ebbb6915101a3e0be6d18eb86fe4140b861e156216dbc9b2e8c774"
  LINUX_ARM64_SHA256 = "ce2309182d491c68729b5fd3592f0cc5c8f2ce798146ef02f8043936e9559b0f"
  LINUX_X86_64_SHA256 = "283c73f4ae63580dbaa44127226ffa0d0900aa561ce7e1c2e54ab5fc02a6beed"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.2/vi-mongo_Darwin_arm64.tar.gz"
      sha256 MACOS_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.2/vi-mongo_Darwin_x86_64.tar.gz"
      sha256 MACOS_X86_64_SHA256
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.2/vi-mongo_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.2/vi-mongo_Linux_x86_64.tar.gz"
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
