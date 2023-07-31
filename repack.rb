class Repack < Formula
  desc "A shell script for repackaging the node_modules in any JavaScript project, providing the option to use either npm or yarn."
  homepage "https://github.com/gthrm/homebrew-repack"
  url "https://github.com/gthrm/homebrew-repack/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "067874ecb93ab7927ac86968921ebaeaef506df30e4e8ff81b3b4b75d3d2c28c"

  def install
    bin.install "repack.sh" => "repack"
  end

  test do
    system "#{bin}/repack --version"
  end
end
