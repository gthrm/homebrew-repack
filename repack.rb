class Repack < Formula
  desc "A shell script for repackaging the node_modules in any JavaScript project, providing the option to use either npm or yarn."
  homepage "https://github.com/gthrm/homebrew-repack"
  url "https://github.com/gthrm/homebrew-repack/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "d41c84fdb6a4682fe5c9543f45f0f8729977b630a31bcbb43803718a17eafc64"

  def install
    bin.install "repack.sh" => "repack"
  end

  test do
    system "#{bin}/repack --version"
  end
end
