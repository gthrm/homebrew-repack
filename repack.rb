class Repack < Formula
  desc "A shell script for repackaging the node_modules in any JavaScript project, providing the option to use either npm or yarn."
  homepage "https://github.com/gthrm/homebrew-repack"
  url "https://github.com/gthrm/homebrew-repack/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "your_file_hash_here"

  def install
    bin.install "repack.sh" => "repack"
  end

  test do
    system "#{bin}/repack --version"
  end
end
