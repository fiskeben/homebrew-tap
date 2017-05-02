class CircleCmd < Formula
  desc "Use CircleCI from the command-line."
  homepage "https://github.com/fiskeben/circle-cmd"
  url "https://github.com/fiskeben/circle-cmd/archive/0.6.1.tar.gz"
  sha256 "d73fe519122f7a72b6ee9968e9d6b588cba176c23682dc06636964ce4abfb7e5"

  def install
    prefix.install Dir["*.rb"] - ["test.rb"]
    bin.install_symlink prefix/'circle.rb' => "circle"
  end

end
