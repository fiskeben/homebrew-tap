class CircleCmd < Formula
  desc "Use CircleCI from the command-line."
  homepage "https://github.com/fiskeben/circle-cmd"
  url "https://github.com/fiskeben/circle-cmd/archive/0.4.0.tar.gz"
  sha256 "6fadf4cd13a9127fef9a0e93b63bbf59e821811b2db2f6b2c6fa2892421d653e"

  def install
    prefix.install Dir["*.rb"] - ["test.rb"]
    bin.install_symlink prefix/'circle.rb' => "circle"
  end

end
