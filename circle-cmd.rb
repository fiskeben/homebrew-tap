class CircleCmd < Formula
  desc "Use CircleCI from the command-line."
  homepage "https://github.com/fiskeben/circle-cmd"
  url "https://github.com/fiskeben/circle-cmd/archive/0.6.0.tar.gz"
  sha256 "21e0ab2812ce9619070bb25deb5800be3f083b513fb463f1de1db2fc124b7087"

  def install
    prefix.install Dir["*.rb"] - ["test.rb"]
    bin.install_symlink prefix/'circle.rb' => "circle"
  end

end
