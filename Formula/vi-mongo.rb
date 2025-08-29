class ViMongo < Formula
  desc "Terminal User Interface for MongoDB"
  homepage "https://github.com/kopecmaciej/vi-mongo"
  version "v0.1.30"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.30/vi-mongo_Darwin_arm64.tar.gz"
      sha256 "7b13666360df14ef09e4eb3f01a15193be927048a601bea67e6182d96ea127aa"
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.30/vi-mongo_Darwin_x86_64.tar.gz"
      sha256 "52855c425a927d97cc230df727a505af791604a64a38f8f95084d03412286959"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.30/vi-mongo_Linux_arm64.tar.gz"
      sha256 "1c1941c247585e1a769be17a0bd775ad1d76f5aa83a0ea8afe5dbdc3643cbc37"
    else
      url "https://github.com/kopecmaciej/vi-mongo/releases/download/v0.1.30/vi-mongo_Linux_x86_64.tar.gz"
      sha256 "079bc0cc26dcbe200efc5e27a5b8e191b845bd80db755e43641e599f7a5d15ce"
    end
  end

  def install
    bin.install "vi-mongo"
  end

  test do
    system "#{bin}/vi-mongo", "--version"
  end
end 
