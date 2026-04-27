class Cchb < Formula
  desc "TUI tool for browsing and restoring past Claude Code session history"
  homepage "https://github.com/iselegant/cchb"
  license "Apache-2.0"
  version "0.9.4"

  on_macos do
    on_arm do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-aarch64-apple-darwin.tar.gz"
      sha256 "b1c9e0faf960cbc3b5b58ff52194dc184f457566273768a97104683de6999f4c"
    end

    on_intel do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-x86_64-apple-darwin.tar.gz"
      sha256 "6eaee27a6f25e79146978fb3f100220f55290a9fff8f9ae215b481462a5c9201"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74535346bca7f2c734a2b2810b5d4faa1d9f8e97ed83dd8d710a84fa27c4c5f9"
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
