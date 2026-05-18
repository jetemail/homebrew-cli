class Jetemail < Formula
  desc "Official CLI for JetEmail"
  homepage "https://github.com/jetemail/jetemail-cli"
  version "0.1.4"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jetemail/jetemail-cli/releases/download/v0.1.4/jetemail-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "45946860e4e17e4bb6ec7e17125011cb11dc7a812dd4e179539392d3c144badb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jetemail/jetemail-cli/releases/download/v0.1.4/jetemail-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd7243216c42e4021c2c8b084eefbcabc22890db4de49bf2d4eab9de4227876e"
    end
  end

  def install
    bin.install "jetemail"
  end

  test do
    assert_match "jetemail", shell_output("#{bin}/jetemail --version")
  end
end
