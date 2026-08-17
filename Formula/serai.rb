class Serai < Formula
  desc "Distributed file sharing system for sharing \"nanika\""
  homepage "https://github.com/uniba-commons/serai"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uniba-commons/serai/releases/download/v0.1.0/serai-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "a518a697828209c40933896a3b641892e35aca69c4db721f84a3a307fda5e58d"
    else
      url "https://github.com/uniba-commons/serai/releases/download/v0.1.0/serai-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "81f2f7ad8b322c03fae69a1f332b5246567197bebd52c80312e9a16a87e96367"
    end
  end

  def install
    bin.install "serai"
  end

  test do
    system bin/"serai", "--help"
  end
end
