class Katsudou < Formula
  desc "katsudou CLI"
  homepage "https://github.com/uniba-commons/katsudou"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.teambrew.tools/cli/v0.0.6/katsudou-darwin-arm64"
      sha256 "21b9e6c046a1098abd78f2d44267ecb8287e6f063a139c08f491449e888d160f"
    else
      url "https://releases.teambrew.tools/cli/v0.0.6/katsudou-darwin-x64"
      sha256 "ef552bf903ecdcb45596c3aa4f3d0d341714062b97ec068c912a482a6f2b3879"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "katsudou-darwin-arm64" => "katsudou"
    else
      bin.install "katsudou-darwin-x64" => "katsudou"
    end
  end
end
