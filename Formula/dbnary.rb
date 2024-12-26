# Generated with JReleaser 1.2.0 at 2024-12-26T16:51:47.018884Z
class Dbnary < Formula
  desc "Dbnary is an effort to provide multilingual lexical data extracted from wiktionary.
    The extracted data is made available as LLOD (Linguistic Linked Open Data). This data set has
    won the Monnet challenge in 2012 and 2014.
    This project consists in a set of extraction tools (whose status report is given in these maven
    generated pages. The extracted data is made available on the
    https://kaiko.getalp.org/about-dbnary/ website."
  homepage "https://kaiko.getalp.org/about-dbnary/dbnary-commands"
  url "https://github.com/serasset/dbnary/releases/download/v3.1.26/dbnary-commands-3.1.26.zip"
  version "3.1.26"
  sha256 "770c9637258f1d130cdf9e38e16e1fa3794e7417a155994c18525b6428c68c2c"
  license "MIT License"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/dbnary" => "dbnary"
  end

  test do
    output = shell_output("#{bin}/dbnary --version")
    assert_match "3.1.26", output
  end
end
