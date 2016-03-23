require "formula"

class Stm32flash < Formula
  homepage "https://code.google.com/p/stm32flash/"
  version "20160211"
  url "https://sourceforge.net/projects/stm32flash/files/stm32flash-0.5.tar.gz/download"
  sha1 "a193e5ab22bbad89b3d80e7fa8d84adf34a91713"

  def install
    system "make"
    system "install", "-d", "#{prefix}/bin"
    system "install", "-m", "755", "stm32flash", "#{prefix}/bin"
    system "install", "-m", "644", "stm32flash.1", "#{prefix}/../../../share/man/man1"
  end
end
