class Ax < Formula
  desc "macOS Accessibility Inspector CLI — inspect UI hierarchies, attributes, and actions"
  homepage "https://github.com/watzon/ax-cli"
  version "0.2.0"
  license "MIT"

  url "https://github.com/watzon/ax-cli/releases/download/v0.2.0/ax-0.2.0-universal-apple-darwin.tar.gz"
  sha256 "027feab7831b516d46fbc4babdf9c3dd0cdf5ea4782993952e5417e4623f0cc3"

  depends_on :macos

  def install
    bin.install "ax"
  end

  test do
    assert_match "ax #{version}", shell_output("#{bin}/ax --version")
  end
end
