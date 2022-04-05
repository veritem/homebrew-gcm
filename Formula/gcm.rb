# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Gcm < Formula
  desc "conventional commits utility cli"
  homepage "https://github.com/veritem/gcm"
  url "https://github.com/veritem/gcm/archive/refs/tags/0.0.3.tar.gz"
  sha256 "f854df7313629ee928f9d9bd2ed931778a16595a02595237034645e17c300ace"
  license "MIT"
  version "0.0.3"
  bottle :unneeded


  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rootlyhq/cli/releases/download/v1.1.6/rootly_1.1.6_darwin_arm64.tar.gz"
      sha256 "2b2fb2f36e506202970eaf3e0e713e1e07c43abb3285602e9403910fd6ff73d6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/rootlyhq/cli/releases/download/v1.1.6/rootly_1.1.6_darwin_amd64.tar.gz"
      sha256 "71a705262a9d1c989af63f27279b112142596e3dbaf6ff412e06e4c2554ae1f6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rootlyhq/cli/releases/download/v1.1.6/rootly_1.1.6_linux_amd64.tar.gz"
      sha256 "420185c318f28bfe0f3a45c58f5b39ecece2c86be00d34704688600d48141ec8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/cli/releases/download/v1.1.6/rootly_1.1.6_linux_arm64.tar.gz"
      sha256 "3d543e5e3630bcb10964287e367ee74e596dde4b440a7734712d5a82fce6adf0"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/cli/releases/download/v1.1.6/rootly_1.1.6_linux_armv6.tar.gz"
      sha256 "73cc395cc4321a0bbd477942a37a7f953fd01bf523851610b3b9dbeea2032b3f"
    end
  end

  def install
    bin.install "gcm"
  end
end
