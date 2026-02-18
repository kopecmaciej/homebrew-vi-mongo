class ViMongo < Formula
  desc "Terminal User Interface for MongoDB"
  homepage "https://github.com/kopecmaciej/vi-mongo"
  version "v0.1.34"

  # Checksums for different platforms
  MACOS_ARM64_SHA256 = "89f2c44fcfdac38ffc92503d2775cef0168c865adae2d5ddb661f6bfe7ecce8f"
  MACOS_X86_64_SHA256 = "4d8f9be123fe994ef9f4237ca2a1f6f07722b0c2ae09b874e1ec1b7d5afb4bdb"
  LINUX_ARM64_SHA256 = "43c29ddd0a0d357665cd7c094e2c54e0148eecde058c418b255703407edc7786"
  LINUX_X86_64_SHA256 = "0a981c3f7625fdd303c6d16fb763fc2f4a03ab60785d1f8b6785d2c5db8d7231"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.34/vi-mongo_Darwin_arm64.tar.gz"
      sha256 MACOS_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.34/vi-mongo_Darwin_x86_64.tar.gz"
      sha256 MACOS_X86_64_SHA256
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.34/vi-mongo_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.34/vi-mongo_Linux_x86_64.tar.gz"
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
