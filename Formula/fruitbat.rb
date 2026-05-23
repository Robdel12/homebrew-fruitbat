class Fruitbat < Formula
  desc "Ephemeral GitHub Actions runners for Apple Silicon Macs"
  homepage "https://github.com/Robdel12/FruitBat"
  license "MIT"
  head "https://github.com/Robdel12/FruitBat.git", branch: "main"

  depends_on "node" => :build

  def install
    system "npm", "ci"
    system "npm", "run", "build:binary"

    bin.install "dist/fruitbat"
  end

  test do
    assert_match "FruitBat", shell_output("#{bin}/fruitbat --help")
  end
end
