class Diskusage < Formula
  desc "A utility you can use to examine disk usage. It's similar to the Unix du command."
  homepage ""
  url "https://github.com/clintmod/diskusage/releases/download/v1.0.2/diskusage_1.0.2_darwin_amd64.tar.gz"
  version "1.0.2"
  sha256 "42246071bc3a0355330e3330a26aeab78092bf77c1a86c58c4fdb7abbac7d75e"

  def install
    bin.install "diskusage"
  end

  test do
    
  end
end
