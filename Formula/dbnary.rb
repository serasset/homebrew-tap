# Generated with JReleaser 1.2.0 at 2022-10-20T17:03:57.905302Z
class Dbnary < Formula
  desc "Dbnary is an effort to provide multilingual lexical data extracted from wiktionary.
    The extracted data is made available as LLOD (Linguistic Linked Open Data). This data set has
    won the Monnet challenge in 2012 and 2014.
    This project consists in a set of extraction tools (whose status report is given in these maven
    generated pages. The extracted data is made available on the
    http://kaiko.getalp.org/about-dbnary/ web site."
  homepage "http://kaiko.getalp.org/about-dbnary/dbnary-commands"
  url "https://github.com/serasset/dbnary/releases/download/v3.1.3/dbnary-commands-3.1.3.zip"
  version "3.1.3"
  sha256 "fd3bee1381a55b7cb2eb75e2df7db84cb56bafc71b6dd9d6fd028e0f2cc5104d"
  license "MIT License"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/dbnary" => "dbnary"
  end

  test do
    output = shell_output("#{bin}/dbnary --version")
    assert_match "3.1.3", output
  end
end
