class Be < Formula
  desc "Turn complex shell commands into simple tags"
  homepage "https://github.com/ji233-Sun/beaver"
  url "https://github.com/ji233-Sun/beaver/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "353be88169748d41da47dd892ca155807f504017d2967d0829cb036a8a4d61f8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "be", shell_output("#{bin}/be --help")
  end
end
