class Repack < Formula
  desc "A shell script for repackaging the node_modules in any JavaScript project, providing the option to use either npm or yarn."
  homepage "https://github.com/gthrm/homebrew-repack"
  url "https://github.com/gthrm/homebrew-repack/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "f91b9934c25e25dbbde2c0b6ecc1b679f64376116105237ca47b79e4e815eb68"

  def install
    bin.install "repack.sh" => "repack"
  end

  test do
    system "#{bin}/repack --version"
  end
end
