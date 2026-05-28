class Fruitbat < Formula
  desc "Ephemeral GitHub Actions runners for Apple Silicon Macs"
  homepage "https://github.com/Robdel12/FruitBat"
  license "MIT"
  url "https://github.com/Robdel12/FruitBat/releases/download/v0.1.5/fruitbat-darwin-arm64.tar.gz"
  version "0.1.5"
  sha256 "5b58bc5bfbcca8e1e65cf2508dd0d00d3c80b7f8e5256d4bbc2321ff979ae422"

  def install
    odie "FruitBat currently ships macOS arm64 binaries only" unless OS.mac? && Hardware::CPU.arm?

    bin.install "fruitbat"
  end

  test do
    assert_match "FruitBat", shell_output("#{bin}/fruitbat --help")
  end
end
