class CircleCmd < Formula
  desc "Use CircleCI from the command-line."
  homepage "https://github.com/fiskeben/circle-cmd"
  url "https://github.com/fiskeben/circle-cmd/archive/0.2.0.tar.gz"
  sha256 "215ac026fb8e69dc231ea22a2e3c92024c23d1979c88b269c8e13d7d8532e332"

  def install
    prefix.install Dir["*.rb"]
    bin.install_symlink prefix/'circle.rb' => "circle"
  end

end
