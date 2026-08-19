class Serai < Formula
  desc "Distributed file sharing system for sharing \"nanika\""
  homepage "https://github.com/uniba-commons/serai"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uniba-commons/serai/releases/download/v0.2.0/serai-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "ff4e780dfb1d827d6cf4f692d86bad6a94d50dcd26f1db213543a0c8291d0cc2"
    else
      url "https://github.com/uniba-commons/serai/releases/download/v0.2.0/serai-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "8e27aaae1cf1a19efb699dc864bafa080c8acd6c1c0e31c9e38a92cbe6117e35"
    end
  end

  def install
    bin.install "serai"
  end

  test do
    system bin/"serai", "--help"
  end
end
