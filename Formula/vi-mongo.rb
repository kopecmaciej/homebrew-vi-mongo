class ViMongo < Formula
  desc "Terminal User Interface for MongoDB"
  homepage "https://github.com/kopecmaciej/vi-mongo"
  version "v0.1.31"

  # Checksums for different platforms
  MACOS_ARM64_SHA256 = "dc3d5d2c43663e25a0afcf677ff4af26bb6dc5cd317d6cc134290ba13b1fe7d3"
  MACOS_X86_64_SHA256 = "708d0232d0392d5951c28f9f8103fc2d367d0bd790cc21d7c67e24fee2a6de19"
  LINUX_ARM64_SHA256 = "5c1263f332bfb0e3200486abc00a271d26909f9a34504f7032b21c1f2f6f0bbb"
  LINUX_X86_64_SHA256 = "4afe6899e25af93552792d59bb87c9d1c10af665656b81b61815fa74d12a0d1c"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.31/vi-mongo_Darwin_arm64.tar.gz"
      sha256 MACOS_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.31/vi-mongo_Darwin_x86_64.tar.gz"
      sha256 MACOS_X86_64_SHA256
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.31/vi-mongo_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.31/vi-mongo_Linux_x86_64.tar.gz"
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
