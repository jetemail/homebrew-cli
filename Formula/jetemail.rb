class Jetemail < Formula
  desc "Official CLI for JetEmail"
  homepage "https://github.com/jetemail/jetemail-cli"
  version "0.1.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jetemail/jetemail-cli/releases/download/v0.1.3/jetemail-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "5cf92163ad70977791eac1d23e5644d0a7d97bd5f7df1c8e2b54e2a0768f24c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jetemail/jetemail-cli/releases/download/v0.1.3/jetemail-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ccb02238d567f689d316494465b45a4aa6f3cb07635432995a11fd250ef8852"
    end
  end

  def install
    bin.install "jetemail"
  end

  test do
    assert_match "jetemail", shell_output("#{bin}/jetemail --version")
  end
end
