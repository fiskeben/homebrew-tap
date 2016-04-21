class CircleCmd < Formula
  desc "Use CircleCI from the command-line."
  homepage "https://github.com/fiskeben/circle-cmd"
  url "https://github.com/fiskeben/circle-cmd/archive/0.3.0.tar.gz"
  sha256 "b6a17b3440ed8266685dc7daa42305e1bcea33bd6d1f8bd17aaf7cfbcc7cd6cf"

  def install
    prefix.install Dir["*.rb"]
    bin.install_symlink prefix/'circle.rb' => "circle"
  end

end
