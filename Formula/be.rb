class Be < Formula
  desc "Turn complex shell commands into simple tags"
  homepage "https://github.com/ji233-Sun/beaver"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ji233-Sun/beaver/releases/download/v0.1.0/be-aarch64-apple-darwin.tar.gz"
      sha256 "08f4d07030dde389ba9c6b86f53ade3e2ed4acabff1c8d2ed24d15c8dfdb1b99"
    else
      url "https://github.com/ji233-Sun/beaver/releases/download/v0.1.0/be-x86_64-apple-darwin.tar.gz"
      sha256 "2473366f1ca36f26ef93713913029bfc904c05eabf317d0583c829972c35b381"
    end
  end

  on_linux do
    url "https://github.com/ji233-Sun/beaver/releases/download/v0.1.0/be-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c9ed0cefc5b9fe450c0689f1808e54d89619f0d9515692dfb91298e6c766564b"
  end

  def install
    bin.install "be"
  end

  test do
    assert_match "be", shell_output("#{bin}/be --help")
  end
end
