# Generated with JReleaser 1.0.0-RC1 at 2022-03-31T11:17:39.309752+02:00
class Dbnary < Formula
  desc "Dbnary is an effort to provide multilingual lexical data extracted from wiktionary.
    The extracted data is made available as LLOD (Linguistic Linked Open Data). This data set has
    won the Monnet challenge in 2012 and 2014.
    This project consists in a set of extraction tools (whose status report is given in these maven
    generated pages. The extracted data is made available on the
    http://kaiko.getalp.org/about-dbnary/ web site."
  homepage "http://kaiko.getalp.org/about-dbnary/dbnary-commands"
  url "https://github.com/serasset/dbnary/releases/download/v3.0.6.1/dbnary-commands-3.0.6.1.zip"
  version "3.0.6.1"
  sha256 "a877d3e3df5a74e989712d86af772a6630649459454350fc54e7e77e1a6e43fa"
  license "MIT License"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/dbnary" => "dbnary"
  end

  test do
    output = shell_output("#{bin}/dbnary --version")
    assert_match "3.0.6.1", output
  end
end
