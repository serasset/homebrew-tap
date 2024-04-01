# Generated with JReleaser 1.2.0 at 2024-04-01T12:47:53.150587Z
class Dbnary < Formula
  desc "Dbnary is an effort to provide multilingual lexical data extracted from wiktionary.
    The extracted data is made available as LLOD (Linguistic Linked Open Data). This data set has
    won the Monnet challenge in 2012 and 2014.
    This project consists in a set of extraction tools (whose status report is given in these maven
    generated pages. The extracted data is made available on the
    https://kaiko.getalp.org/about-dbnary/ website."
  homepage "https://kaiko.getalp.org/about-dbnary/dbnary-commands"
  url "https://github.com/serasset/dbnary/releases/download/v3.1.16/dbnary-commands-3.1.16.zip"
  version "3.1.16"
  sha256 "203e1c851a84701e295900f76ae632abf890c407b69a8c5242ff3988b6da4f18"
  license "MIT License"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/dbnary" => "dbnary"
  end

  test do
    output = shell_output("#{bin}/dbnary --version")
    assert_match "3.1.16", output
  end
end
