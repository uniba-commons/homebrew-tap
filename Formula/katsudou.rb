class Katsudou < Formula
  desc "katsudou CLI"
  homepage "https://github.com/uniba-commons/katsudou"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.teambrew.tools/cli/v0.0.9/katsudou-darwin-arm64"
      sha256 "a001bb0979cad14ac8332ae92317e30322841661e584c919ed8d9e34dfeb0e30"
    else
      url "https://releases.teambrew.tools/cli/v0.0.9/katsudou-darwin-x64"
      sha256 "2a58973873ad4e52e63c866d49241456c40cd09cbca36c7d00c881c55a1527ee"
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
