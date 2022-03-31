# Generated with JReleaser 1.0.0-RC1 at 2022-03-31T14:33:28.665487+02:00
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
  sha256 "e6f611387319fc37e814e604327f4b1a3a22e59f3b455bac4d00eb7cb6e7a5dd"
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
