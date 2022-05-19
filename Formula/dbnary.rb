# Generated with JReleaser 1.0.0-RC1 at 2022-05-19T10:06:01.401802Z
class Dbnary < Formula
  desc "Dbnary is an effort to provide multilingual lexical data extracted from wiktionary.
    The extracted data is made available as LLOD (Linguistic Linked Open Data). This data set has
    won the Monnet challenge in 2012 and 2014.
    This project consists in a set of extraction tools (whose status report is given in these maven
    generated pages. The extracted data is made available on the
    http://kaiko.getalp.org/about-dbnary/ web site."
  homepage "http://kaiko.getalp.org/about-dbnary/dbnary-commands"
  url "https://github.com/serasset/dbnary/releases/download/v3.0.7/dbnary-commands-3.0.7.zip"
  version "3.0.7"
  sha256 "f19963ffc5fd9a98697287facde7ca06d458f2b073edef9f9dbbeee45516ae66"
  license "MIT License"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/dbnary" => "dbnary"
  end

  test do
    output = shell_output("#{bin}/dbnary --version")
    assert_match "3.0.7", output
  end
end
