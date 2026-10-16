# Bootstrap formula for v2.0.2, written by hand from .github/homebrew/formula.sh
# in jbovet/tlschecker (v2.0.2 has no --completions). The v3.0.0 release
# workflow overwrites it with the generated formula.
class Tlschecker < Formula
  desc "TLS/SSL certificate checker: expiry, chain, revocation and grade"
  homepage "https://github.com/jbovet/tlschecker"
  version "2.0.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/jbovet/tlschecker/releases/download/v2.0.2/tlschecker-macos-aarch64.tar.gz"
      sha256 "5d8f3f831e9c48dbf4cf23ad6dd34d6c60eb904df880194ff920a45c8068f6cb"
    end
    on_intel do
      url "https://github.com/jbovet/tlschecker/releases/download/v2.0.2/tlschecker-macos-x86_64.tar.gz"
      sha256 "413b161a02a7110efd1706dce168684c84637815ce6dd84ebc0e02b3fcc4a843"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jbovet/tlschecker/releases/download/v2.0.2/tlschecker-linux-aarch64.tar.gz"
      sha256 "57882d35aba3b36bb010141d8d6e71f4d9c1adba312b75ce0a32b31e0093ad0b"
    end
    on_intel do
      url "https://github.com/jbovet/tlschecker/releases/download/v2.0.2/tlschecker-linux-x86_64.tar.gz"
      sha256 "de44a9b9652f0016bf6564571bc655c6b76278d1aaae838c7523f2524f115ef1"
    end
  end

  def install
    bin.install "tlschecker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tlschecker --version")
  end
end
