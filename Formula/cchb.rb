class Cchb < Formula
  desc "TUI tool for browsing and restoring past Claude Code session history"
  homepage "https://github.com/iselegant/cchb"
  license "Apache-2.0"
  version "0.9.3"

  on_macos do
    on_arm do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-aarch64-apple-darwin.tar.gz"
      sha256 "a2506f4550e211492a752b05caea82264f5145c8e3a75b267bb213fbfcb12d74"
    end

    on_intel do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-x86_64-apple-darwin.tar.gz"
      sha256 "0491b9cea29895a09ee21ff8e69bd8b7509e827a3d726c4204851844fe2e937b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e293bc3fa80f020e4eb8701d002d392f1c51ad89a70b512b7f7facb0377b98a1"
    end
  end

  def install
    bin.install "cchb"
  end

  test do
    assert_predicate bin/"cchb", :exist?
    assert_predicate bin/"cchb", :executable?
  end
end
