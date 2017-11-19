class Macprefs < Formula
    include Language::Python::Virtualenv
  
    desc "Backup and Restore your Mac System and App Preferences"
    homepage "https://github.com/clintmod/macprefs"
    url "https://github.com/clintmod/macprefs/archive/v1.0.7.tar.gz"
    sha256 "045dcb805a38bb37e2b782eec6127a1237b31c2d4a80b93761e237459413e1a9"
  
    depends_on :python if MacOS.version <= :snow_leopard
  
    def install
      bin.install Dir["*"]
    end
  
    test do
      system "#{bin}/macprefs", "--help"
    end
  end
  