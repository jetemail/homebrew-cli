class Jetemail < Formula
  desc "Official CLI for JetEmail"
  homepage "https://github.com/jetemail/jetemail-cli"
  version "0.1.4"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jetemail/jetemail-cli/releases/download/v0.1.4/jetemail-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "179eca8e06f1445f4a3a8688e8b0443892f684968e6c7a2aa46ec8139c756d38"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jetemail/jetemail-cli/releases/download/v0.1.4/jetemail-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eaae5318c0f50dd7b6870df0538b6e12ce4b2c3583fd75b2417bd0289933d737"
    end
  end

  def install
    bin.install "jetemail"
  end

  test do
    assert_match "jetemail", shell_output("#{bin}/jetemail --version")
  end
end
