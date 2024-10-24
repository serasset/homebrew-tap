# Generated with JReleaser 1.2.0 at 2024-10-24T13:35:09.720065Z
class Dbnary < Formula
  desc "Dbnary is an effort to provide multilingual lexical data extracted from wiktionary.
    The extracted data is made available as LLOD (Linguistic Linked Open Data). This data set has
    won the Monnet challenge in 2012 and 2014.
    This project consists in a set of extraction tools (whose status report is given in these maven
    generated pages. The extracted data is made available on the
    https://kaiko.getalp.org/about-dbnary/ website."
  homepage "https://kaiko.getalp.org/about-dbnary/dbnary-commands"
  url "https://github.com/serasset/dbnary/releases/download/v3.1.24b/dbnary-commands-3.1.24b.zip"
  version "3.1.24b"
  sha256 "f969cf1aaca4e10de54284d47996a963a35c2393a6ab37fa206f27a345213825"
  license "MIT License"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/dbnary" => "dbnary"
  end

  test do
    output = shell_output("#{bin}/dbnary --version")
    assert_match "3.1.24b", output
  end
end
