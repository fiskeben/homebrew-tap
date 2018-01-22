 class Speck < Formula
  desc "micro.blog for the command line."
  homepage "https://github.com/fiskeben/speck"
  url "https://github.com/fiskeben/speck/releases/download/1.0.0-alpha1/speck-1.0.0-alpha1.zip"
  sha256 "79e32e6c8ad14bef73b81b9d6412f0c041a94ec5b370a5cae71d868488129365"
   def install
     prefix.install Dir["speck-*"]
     bin.install_symlink prefix/'speck-1.0.0-alpha1' => "speck"
   end
end
