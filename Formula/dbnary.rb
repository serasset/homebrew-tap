# Generated with JReleaser 1.2.0 at 2022-10-20T18:28:33.590757+02:00
class Dbnary < Formula
  desc "Dbnary is an effort to provide multilingual lexical data extracted from wiktionary.
    The extracted data is made available as LLOD (Linguistic Linked Open Data). This data set has
    won the Monnet challenge in 2012 and 2014.
    This project consists in a set of extraction tools (whose status report is given in these maven
    generated pages. The extracted data is made available on the
    http://kaiko.getalp.org/about-dbnary/ web site."
  homepage "http://kaiko.getalp.org/about-dbnary/dbnary-commands"
  url "https://github.com/serasset/dbnary/releases/download/v3.1.2/dbnary-commands-3.1.2.zip"
  version "3.1.2"
  sha256 "4b54df4ae5cfc2a47e75dadbb65c5c386a7d5210c6cbbbddc5f9d1dccb07c687"
  license "MIT License"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/dbnary" => "dbnary"
  end

  test do
    output = shell_output("#{bin}/dbnary --version")
    assert_match "3.1.2", output
  end
end
