# Generated with JReleaser 1.2.0 at 2026-07-27T08:14:21.132538186Z
class Dbnary < Formula
  desc "Dbnary is an effort to provide multilingual lexical data extracted from wiktionary.
    The extracted data is made available as LLOD (Linguistic Linked Open Data). This data set has
    won the Monnet challenge in 2012 and 2014.
    This project consists in a set of extraction tools (whose status report is given in these maven
    generated pages. The extracted data is made available on the
    https://kaiko.getalp.org/about-dbnary/ website."
  homepage "https://kaiko.getalp.org/about-dbnary/dbnary-commands"
  url "https://github.com/serasset/dbnary/releases/download/v3.3.1/dbnary-commands-3.3.1.zip"
  version "3.3.1"
  sha256 "296cd8b52533a40b11b99a7e08844de8032d2e57bb579ab01929b17b0f6a68f8"
  license "MIT License"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/dbnary" => "dbnary"
  end

  test do
    output = shell_output("#{bin}/dbnary --version")
    assert_match "3.3.1", output
  end
end
