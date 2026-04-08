class Ax < Formula
  desc "macOS Accessibility Inspector CLI — inspect UI hierarchies, attributes, and actions"
  homepage "https://github.com/watzon/ax-cli"
  version "0.1.0"
  license "MIT"

  url "https://github.com/watzon/ax-cli/releases/download/v#{version}/ax-#{version}-universal-apple-darwin.tar.gz"
  sha256 "499e33431b58b2e6081aec7961dec85561138ba98e167ac38fe1c4f57c189685"

  depends_on :macos

  def install
    bin.install "ax"
  end

  test do
    assert_match "ax #{version}", shell_output("#{bin}/ax --version")
  end
end
