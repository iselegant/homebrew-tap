class Cchb < Formula
  desc "TUI tool for browsing and restoring past Claude Code session history"
  homepage "https://github.com/iselegant/cchb"
  license "Apache-2.0"
  version "0.9.5"

  on_macos do
    on_arm do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-aarch64-apple-darwin.tar.gz"
      sha256 "e4f0cb166332c93914914fb2b4b35ce513cec400ff4b1579aca9aa1125650e03"
    end

    on_intel do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-x86_64-apple-darwin.tar.gz"
      sha256 "43c17a41d702cf0885c8fbace298c976c2c8778a76c1f8e67355c0d3ee302483"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea82cf83cd39ea1c84e02995cb3c6a03b9a2b807a0c625dbb8fdbfbc8356ed9e"
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
