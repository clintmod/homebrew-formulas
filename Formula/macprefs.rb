class Macprefs < Formula
  desc "Backup your Mac System and App Preferences"
  homepage "https://github.com/clintmod/macprefs"
  url "https://github.com/clintmod/macprefs/archive/v1.0.0.tar.gz"
  sha256 "a6fd2a7f0e1ed117b212f3228ada8a48b8dea78fbe291472ce0bb9a43ee84fd1"

  depends_on :python if MacOS.version <= :snow_leopard

  def install
    bin.install_symlink "bin/macprefs"
  end

  test do
    system "#{bin}/macprefs", "--help"
  end
end
