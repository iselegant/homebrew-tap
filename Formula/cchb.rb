class Cchb < Formula
  desc "TUI tool for browsing and restoring past Claude Code session history"
  homepage "https://github.com/iselegant/cchb"
  license "Apache-2.0"
  version "0.9.2"

  on_macos do
    on_arm do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-aarch64-apple-darwin.tar.gz"
      sha256 "0372fc60f3ce269d7e081f588a7afc1c92273b2423c35b138f05dd2ad19e6ac8"
    end

    on_intel do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-x86_64-apple-darwin.tar.gz"
      sha256 "bc903aa1093d4c5796636aa4c656d8a89bb7e035d92ef0d3ff3624647a40d7c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/iselegant/cchb/releases/download/v#{version}/cchb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6947b65e204285ac19538e73de553e0ec6de9a3182d64eccd9a763a7c34f6120"
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
