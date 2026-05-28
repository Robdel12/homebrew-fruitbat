class Fruitbat < Formula
  desc "Ephemeral GitHub Actions runners for Apple Silicon Macs"
  homepage "https://github.com/Robdel12/FruitBat"
  license "MIT"
  url "https://github.com/Robdel12/FruitBat/releases/download/v0.1.6/fruitbat-darwin-arm64.tar.gz"
  version "0.1.6"
  sha256 "45187af56c85ccc173cdc373cbda0b7dbf06c8a9b174880982e51865479b323a"

  def install
    odie "FruitBat currently ships macOS arm64 binaries only" unless OS.mac? && Hardware::CPU.arm?

    bin.install "fruitbat"
  end

  test do
    assert_match "FruitBat", shell_output("#{bin}/fruitbat --help")
  end
end
