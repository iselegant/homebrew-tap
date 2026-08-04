class Cchb < Formula
  desc "TUI tool for browsing and restoring past Claude Code session history"
  homepage "https://github.com/iselegant/cchb"
  license "Apache-2.0"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-aarch64-apple-darwin.tar.gz"
      sha256 "26c05e5bf7dd140a51c6566e9f166fbdd076ea3930771e42262335a2eda96d97"
    end

    on_intel do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-x86_64-apple-darwin.tar.gz"
      sha256 "0b7585404fd56d2bf817a78db0ff565b8029363e4b9b3511ec5b4f48c5b1ea86"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc8c25144a411251b55e267c911f1ef64eafab5350b896239afb825ef24ff91e"
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
