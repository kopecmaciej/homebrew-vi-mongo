class ViMongo < Formula
  desc "Terminal User Interface for MongoDB"
  homepage "https://github.com/kopecmaciej/vi-mongo"
  version "v0.2.3"

  # Checksums for different platforms
  MACOS_ARM64_SHA256 = "7343718d114f07df622f78736fbde6d227ab0de47e0b3608634731716b21eca4"
  MACOS_X86_64_SHA256 = "f071e31f121b804620534bbf60750d1e8d2843fb7be777193ba297f864ab82a7"
  LINUX_ARM64_SHA256 = "53c6572317313a8c709e85352099d3376ec423bcdce8881dcdfc9476e88ff2cd"
  LINUX_X86_64_SHA256 = "bc8bf9883f3ddc9b3414cbbfa43540ff521b075079dc2f94b57ab3912551b458"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.3/vi-mongo_Darwin_arm64.tar.gz"
      sha256 MACOS_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.3/vi-mongo_Darwin_x86_64.tar.gz"
      sha256 MACOS_X86_64_SHA256
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.3/vi-mongo_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.3/vi-mongo_Linux_x86_64.tar.gz"
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
