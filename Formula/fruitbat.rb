class Fruitbat < Formula
  desc "Ephemeral GitHub Actions runners for Apple Silicon Macs"
  homepage "https://github.com/Robdel12/FruitBat"
  license "MIT"
  url "https://github.com/Robdel12/FruitBat/releases/download/v0.1.1/fruitbat-darwin-arm64.tar.gz"
  version "0.1.1"
  sha256 "081d6ea331afebff2a37a12696106b6b74f7e86d517c028be6523ceff3212109"

  def install
    odie "FruitBat currently ships macOS arm64 binaries only" unless OS.mac? && Hardware::CPU.arm?

    bin.install "fruitbat"
  end

  test do
    assert_match "FruitBat", shell_output("#{bin}/fruitbat --help")
  end
end
