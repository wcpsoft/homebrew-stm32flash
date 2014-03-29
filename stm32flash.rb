require "formula"

class Stm32flash < Formula
  homepage "https://code.google.com/p/stm32flash/"
  version "20140328"
  url "https://gitorious.org/stm32flash/stm32flash/archive/2e04bf684eaeb7a737597e010e13b98b617397f7.tar.gz"
  sha1 "b6d9e70eb64249819a76ed8615c02a60034f73c8"

  def install
    system "make"
    system "install", "-d", "#{prefix}/bin"
    system "install", "-m", "755", "stm32flash", "#{prefix}/bin"
    system "install", "-m", "644", "stm32flash.1", "#{prefix}/../../../share/man/man1"
  end
end
