class Jetemail < Formula
  desc "Official CLI for JetEmail"
  homepage "https://github.com/jetemail/jetemail-cli"
  version "0.1.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jetemail/jetemail-cli/releases/download/v0.1.2/jetemail-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "352a0830ab1963348968909b5e67126c3c324e6af57e9ad89661c662440ca8b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jetemail/jetemail-cli/releases/download/v0.1.2/jetemail-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bccad77c49a5dee8533b530e088538c82b56b6b696fddc6b28e07a5a89ad4bfb"
    end
  end

  def install
    bin.install "jetemail"
  end

  test do
    assert_match "jetemail", shell_output("#{bin}/jetemail --version")
  end
end
