class Katsudou < Formula
  desc "katsudou CLI"
  homepage "https://github.com/uniba-commons/katsudou"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.teambrew.tools/cli/v0.0.4/katsudou-darwin-arm64"
      sha256 "415962fc79a8a007d3c3977ea97fcf81710766cb5e375bb7a15ff4b2e0e2821b"
    else
      url "https://releases.teambrew.tools/cli/v0.0.4/katsudou-darwin-x64"
      sha256 "16ecd1482bb80049544e8b7dbf47e07d09164e52bb98468442a311d33d609b73"
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
