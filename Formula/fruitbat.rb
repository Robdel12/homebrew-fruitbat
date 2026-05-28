class Fruitbat < Formula
  desc "Ephemeral GitHub Actions runners for Apple Silicon Macs"
  homepage "https://github.com/Robdel12/FruitBat"
  license "MIT"
  url "https://github.com/Robdel12/FruitBat/releases/download/v0.1.4/fruitbat-darwin-arm64.tar.gz"
  version "0.1.4"
  sha256 "61b1422001987e03e4dc47f9c0d12c8ef716002372707dbe382c8c40a225058b"

  def install
    odie "FruitBat currently ships macOS arm64 binaries only" unless OS.mac? && Hardware::CPU.arm?

    bin.install "fruitbat"
  end

  test do
    assert_match "FruitBat", shell_output("#{bin}/fruitbat --help")
  end
end
