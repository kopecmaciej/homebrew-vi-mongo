class ViMongo < Formula
  desc "Terminal User Interface for MongoDB"
  homepage "https://github.com/kopecmaciej/vi-mongo"
  version "v0.3.0"

  # Checksums for different platforms
  MACOS_ARM64_SHA256 = "77c8d63d9b8b57330623fac08b1e27e071523375b183b6372993b74a10af56fa"
  MACOS_X86_64_SHA256 = "6f1e7987fa2840fd9377bbebf27a2b33f647a8399aac6eff4b48462f32301479"
  LINUX_ARM64_SHA256 = "0f0d61313aef6f02b64f0e47b993608f5d915c1b68454de6bc21d7973717bd84"
  LINUX_X86_64_SHA256 = "c5a8b64bd2a7df2897f0efbc6b8b8fdbc4cd47b273c738b7cc8c9b88d22f75ff"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.3.0/vi-mongo_Darwin_arm64.tar.gz"
      sha256 MACOS_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.3.0/vi-mongo_Darwin_x86_64.tar.gz"
      sha256 MACOS_X86_64_SHA256
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.3.0/vi-mongo_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.3.0/vi-mongo_Linux_x86_64.tar.gz"
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
