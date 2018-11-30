require "language/go"

class Genuuid < Formula
  desc "Quickly generate a UUID and copy it to the clipboard"
  homepage "https://github.com/fiskeben/genuuid"
  url "https://github.com/fiskeben/genuuid/archive/1.0.0.tar.gz"
  sha256 "882b6f4b663e0ab3d27d0a0e164c68c18c588b783468b30c6d5d2045bb95f38a"
  depends_on "go" => :build

  def install
    mkdir_p buildpath/"src/github.com/fiskeben"
    ln_s buildpath, buildpath/"src/github.com/fiskeben/genuuid"
    system "make", "macos"
    bin.install_symlink prefix/'genuuid-darwin-1.0.0' => "genuuid"
  end

  test do
    output = shell_output(bin/"genuuid")
    assert_match /[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/, output
  end
end

