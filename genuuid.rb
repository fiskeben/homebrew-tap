require "language/go"

class Genuuid < Formula
  desc "Quickly generate a UUID and copy it to the clipboard"
  homepage "https://github.com/fiskeben/genuuid"
  url "https://github.com/fiskeben/genuuid/archive/1.0.1.tar.gz"
  sha256 "b13f83f72549e3c74a3f6e43b738fa71b37ec9227cc4426e7493500de1b60b35"
  depends_on "go" => :build

  def install
    mkdir_p buildpath/"src/github.com/fiskeben"
    ln_s buildpath, buildpath/"src/github.com/fiskeben/genuuid"
    system "go", "build", "-o", "genuuid"
    bin.install_symlink prefix/'genuuid'
  end

  test do
    output = shell_output(bin/"genuuid")
    assert_match /[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/, output
  end
end
