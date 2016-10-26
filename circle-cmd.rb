class CircleCmd < Formula
  desc "Use CircleCI from the command-line."
  homepage "https://github.com/fiskeben/circle-cmd"
  url "https://github.com/fiskeben/circle-cmd/archive/0.5.0.tar.gz"
  sha256 "4c9d0afb6ec7ffaf58f864f33f56c298ba91653a820f766f548180df5d66eaf7"

  def install
    prefix.install Dir["*.rb"] - ["test.rb"]
    bin.install_symlink prefix/'circle.rb' => "circle"
  end

end
