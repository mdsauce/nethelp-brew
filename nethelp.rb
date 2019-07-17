class Nethelp < Formula
  desc "Find out why you can't reach Sauce Lab's services. (Real Device Cloud, Virtual Cloud, Sauce Connect and more)"
  homepage "https://github.com/mdsauce/nethelp"
  url "https://github.com/mdsauce/nethelp/archive/v1.5.tar.gz"
  sha256 "28bd5b56d20bb54906283f423c0f505e51b06d5487fdc2d98e8857f7c8ba3ca5"
  depends_on "go" => :build
  version "1.11"

  def install
    system "go", "build", "-o", bin/"nethelp", "."
  end

  test do
    system "#{bin}/nethelp", --help, ">", "output.txt"
    assert_predicate ./"output.txt", :exist?
  end
end
