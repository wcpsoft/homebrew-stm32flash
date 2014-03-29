require "formula"

class Stm32flash < Formula
  homepage "https://code.google.com/p/stm32flash/"
  version "20140328"
  url "https://gitorious.org/stm32flash/stm32flash/archive/2e04bf684eaeb7a737597e010e13b98b617397f7.tar.gz"
  sha1 "bf64e3e4aef35c3be34e8dbb2ed3909460f3b065"

  def install
    system "make"
    system "install", "-d", "#{prefix}/bin"
    system "install", "-m", "755", "stm32flash", "#{prefix}/bin"
    system "install", "-m", "644", "stm32flash.1", "#{prefix}/../../../share/man/man1"
  end
end
