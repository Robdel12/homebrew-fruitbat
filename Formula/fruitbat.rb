class Fruitbat < Formula
  desc "Ephemeral GitHub Actions runners for Apple Silicon Macs"
  homepage "https://github.com/Robdel12/FruitBat"
  license "MIT"
  url "https://github.com/Robdel12/FruitBat/releases/download/v0.1.8/fruitbat-darwin-arm64.tar.gz"
  version "0.1.8"
  sha256 "8f469e0748ea82e53fde32f4f9d0f235ef8217071c6dfef0566c7c298fad6275"

  def install
    odie "FruitBat currently ships macOS arm64 binaries only" unless OS.mac? && Hardware::CPU.arm?

    bin.install "fruitbat"
  end

  test do
    assert_match "FruitBat", shell_output("#{bin}/fruitbat --help")
  end
end
