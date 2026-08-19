class Serai < Formula
  desc "Distributed file sharing system for sharing \"nanika\""
  homepage "https://github.com/uniba-commons/serai"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uniba-commons/serai/releases/download/v0.3.0/serai-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "7ad7e1bd7af2b9f364dc6b7d79dbef9bc9af5bfa12388bdf28e4812d48380c32"
    else
      url "https://github.com/uniba-commons/serai/releases/download/v0.3.0/serai-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "dc39a0649f94c232ca166a8323e868b7ddf7093abd5524ec9978b1f7f5a8aef5"
    end
  end

  def install
    bin.install "serai"
  end

  test do
    system bin/"serai", "--help"
  end
end
