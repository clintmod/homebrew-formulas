class Macprefs < Formula
  include Language::Python::Virtualenv

  desc "Backup your Mac System and App Preferences"
  homepage "https://github.com/clintmod/macprefs"
  url "https://github.com/clintmod/macprefs/archive/v1.0.1.tar.gz"
  sha256 "617ba8ba50fabdebf1b9ce846bea83a0ded3ed209ac55aedcc2c842e52099545"

  depends_on :python if MacOS.version <= :snow_leopard

  def install
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/macprefs", "--help"
  end
end
