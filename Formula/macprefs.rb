class Macprefs < Formula
    include Language::Python::Virtualenv
  
    desc "Backup and Restore your Mac System and App Preferences"
    homepage "https://github.com/clintmod/macprefs"
    url "https://github.com/clintmod/macprefs/archive/v1.0.8.tar.gz"
    sha256 "d0be0e7fe5cc26257083df6b7016c8692caee70c10275a51df18d40591112e86"
  
    depends_on :python if MacOS.version <= :snow_leopard
  
    def install
      bin.install Dir["*"]
    end
  
    test do
      system "#{bin}/macprefs", "--help"
    end
  end
  