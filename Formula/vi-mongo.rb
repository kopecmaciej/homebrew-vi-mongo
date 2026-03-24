class ViMongo < Formula
  desc "Terminal User Interface for MongoDB"
  homepage "https://github.com/kopecmaciej/vi-mongo"
  version "v0.2.1"

  # Checksums for different platforms
  MACOS_ARM64_SHA256 = "518c01406f66b4a9bf46206b16e56fd78f933e6107a0682ebf75be37c31d9999"
  MACOS_X86_64_SHA256 = "ee28c32b7223e186423b60f90c6ea1414444364f8b9b13f836842cf00318d14e"
  LINUX_ARM64_SHA256 = "ec250d911476dfda78e218db3fce3f8ad2b794aca3c433011e1c5dcf101f7937"
  LINUX_X86_64_SHA256 = "4222c42bb521a72f88e4e504f5ed8e83ad5f8a3bbab27bb2b76ec2f150771669"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.1/vi-mongo_Darwin_arm64.tar.gz"
      sha256 MACOS_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.1/vi-mongo_Darwin_x86_64.tar.gz"
      sha256 MACOS_X86_64_SHA256
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.1/vi-mongo_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.2.1/vi-mongo_Linux_x86_64.tar.gz"
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
