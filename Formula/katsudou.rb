class Katsudou < Formula
  desc "katsudou CLI"
  homepage "https://github.com/uniba-commons/katsudou"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.teambrew.tools/cli/v0.0.8/katsudou-darwin-arm64"
      sha256 "82d2bd487440b48f3f0dbec0fb262e5b3c2c23a82d1bf5651ac4cf90956a9caa"
    else
      url "https://releases.teambrew.tools/cli/v0.0.8/katsudou-darwin-x64"
      sha256 "785912c494bf935f8f035356ac3e62037d32485d1e70654d34270cc109c250e3"
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
