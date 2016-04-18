# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class CircleCmd < Formula
  desc "Use CircleCI from the command-line."
  homepage "https://github.com/fiskeben/circle-cmd"
  url "https://github.com/fiskeben/circle-cmd/archive/0.1.0.tar.gz"
  sha256 "681780c857e2d474479d50e0c9769ca2aa044d8308124128ce0a08706ee889a7"

  def install
    prefix.install Dir["*.rb"]
    bin.install_symlink prefix/'circle.rb' => "circle"
  end

end
