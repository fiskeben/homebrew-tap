class CircleCmd < Formula
  desc "Use CircleCI from the command-line."
  homepage "https://github.com/fiskeben/circle-cmd"
  url "https://github.com/fiskeben/circle-cmd/archive/0.5.0.tar.gz"
  sha256 "c50451fac53eae7940a8e922cc3d8e313eb1ebadaab837e1cedff15f013485df"

  def install
    prefix.install Dir["*.rb"] - ["test.rb"]
    bin.install_symlink prefix/'circle.rb' => "circle"
  end

end
