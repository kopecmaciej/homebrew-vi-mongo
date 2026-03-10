class ViMongo < Formula
  desc "Terminal User Interface for MongoDB"
  homepage "https://github.com/kopecmaciej/vi-mongo"
  version "v0.2.0"

  # Checksums for different platforms
  MACOS_ARM64_SHA256 = "2676b2c4473b998b9e39c080e5c02deaf7b4c5fe5fc9a013e9afea4e938c8b53"
  MACOS_X86_64_SHA256 = "2abda2b697fe850df1284f8aefa4b5e4e921e8e6816f00b6d7bf1090d6d8bffb"
  LINUX_ARM64_SHA256 = "9c56039cbbe8003a3d9e2b7c9dca1caee8daeb4c0249833bdcfaf9179d8d5faa"
  LINUX_X86_64_SHA256 = "c99cd93667076c7829fe37951c20155fa9dc360a07fea99f51f52557bc0f7396"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.0/vi-mongo_Darwin_arm64.tar.gz"
      sha256 MACOS_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.0/vi-mongo_Darwin_x86_64.tar.gz"
      sha256 MACOS_X86_64_SHA256
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.0/vi-mongo_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.0/vi-mongo_Linux_x86_64.tar.gz"
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
