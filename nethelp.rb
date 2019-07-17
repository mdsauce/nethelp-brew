class Nethelp < Formula
  desc "Find out why you can't reach Sauce Lab's services. (Real Device Cloud, Virtual Cloud, Sauce Connect and more)"
  homepage "https://github.com/mdsauce/nethelp"
  url "https://github.com/mdsauce/nethelp/archive/v1.5.tar.gz"
  sha256 "3460a7ea57123e710f3aea41c8d1f1893cf21c1177787d818217f9072b866cc9"
  depends_on "go" => :build
  version "1.5"

  def install
    system "go", "build", "-o", bin/"nethelp", "."
  end

  test do
    system "#{bin}/nethelp", --help, ">", "output.txt"
    assert_predicate ./"output.txt", :exist?
  end
end
