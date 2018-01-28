 class Speck < Formula
  desc "micro.blog for the command line."
  homepage "https://github.com/fiskeben/speck"
  url "https://github.com/fiskeben/speck/releases/download/1.0.0-alpha2/speck-1.0.0-alpha2.zip"
  sha256 "db19a0d4107b1d368aa7dff2d1cdd52f69cc27fac719ba7accdd95ce057e4bdd"
   def install
     prefix.install Dir["speck-*"]
     bin.install_symlink prefix/'speck-1.0.0-alpha2' => "speck"
   end
end
