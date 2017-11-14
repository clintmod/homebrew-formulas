class Macprefs < Formula
  desc "Backup your Mac System and App Preferences"
  homepage "https://github.com/clintmod/macprefs"
  url "https://github.com/clintmod/macprefs/archive/v1.0.0.tar.gz"
  sha256 "baa17f271b2772299b380a87bb8cd7dc1c4c9b936fc6da1794455e3b3a327c96"

  depends_on :python if MacOS.version <= :snow_leopard

  def install
    bin.install "bin/macprefs"
  end

  test do
    system "#{bin}/macprefs", "--help"
  end
end
