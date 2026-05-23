class Jetemail < Formula
  desc "Official CLI for JetEmail"
  homepage "https://github.com/jetemail/jetemail-cli"
  version "0.1.5"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jetemail/jetemail-cli/releases/download/v0.1.5/jetemail-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "66b51d418e56320a9697893cc1c1e5bc3e2bd9ed59bde3981c74ae32ed3c501e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jetemail/jetemail-cli/releases/download/v0.1.5/jetemail-0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2329636b2ae9cbcbb15d6e3e4a0b5df2b133864e4319bf588b15eaa32e353afb"
    end
  end

  def install
    bin.install "jetemail"
  end

  test do
    assert_match "jetemail", shell_output("#{bin}/jetemail --version")
  end
end
