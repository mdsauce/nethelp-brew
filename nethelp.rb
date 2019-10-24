class Nethelp < Formula
  desc "Find out why you can't reach Sauce Lab's services. (Real Device Cloud, Virtual Cloud, Sauce Connect and more)"
  homepage "https://github.com/mdsauce/nethelp"
  url "https://github.com/mdsauce/nethelp/archive/v1.5.1.tar.gz"
  sha256 "d4478f05c2bc37d1cda0a90409316aa1a823757bb9447d95f4ec353761870aa0"
  depends_on "go" => :build
  version "1.5.1"

  def install
    system "go", "build", "-o", bin/"nethelp", "."
  end

  test do
    system "#{bin}/nethelp", --help, ">", "output.txt"
    assert_predicate ./"output.txt", :exist?
  end
end
