# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Gcm < Formula
  desc "conventional commits utility cli"
  homepage "https://github.com/veritem/gcm"
  url "https://github.com/veritem/gcm/archive/refs/tags/0.0.3.tar.gz"
  sha256 "f854df7313629ee928f9d9bd2ed931778a16595a02595237034645e17c300ace"
  license "MIT"

  def install
    bin install "gcm"
  end
end
