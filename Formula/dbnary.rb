# Generated with JReleaser 1.2.0 at 2026-07-24T15:58:35.824537488Z
class Dbnary < Formula
  desc "Dbnary is an effort to provide multilingual lexical data extracted from wiktionary.
    The extracted data is made available as LLOD (Linguistic Linked Open Data). This data set has
    won the Monnet challenge in 2012 and 2014.
    This project consists in a set of extraction tools (whose status report is given in these maven
    generated pages. The extracted data is made available on the
    https://kaiko.getalp.org/about-dbnary/ website."
  homepage "https://kaiko.getalp.org/about-dbnary/dbnary-commands"
  url "https://github.com/serasset/dbnary/releases/download/v3.3/dbnary-commands-3.3.zip"
  version "3.3"
  sha256 "9c7b5dc41eca873bc855af63e9a4a7c0d224a606718ffb87320096518d17d925"
  license "MIT License"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/dbnary" => "dbnary"
  end

  test do
    output = shell_output("#{bin}/dbnary --version")
    assert_match "3.3", output
  end
end
