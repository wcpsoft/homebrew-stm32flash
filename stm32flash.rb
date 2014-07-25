require "formula"

class Stm32flash < Formula
  homepage "https://code.google.com/p/stm32flash/"
  version "20140715"
  url "https://gitorious.org/stm32flash/stm32flash/archive/f26ab723e7c11cff6e10ebd76541d1a62e56f965.tar.gz"
  sha1 "177406adac142c1c5bbe45fbb6eebd8caa96a2f1"

  def install
    system "make"
    system "install", "-d", "#{prefix}/bin"
    system "install", "-m", "755", "stm32flash", "#{prefix}/bin"
    system "install", "-m", "644", "stm32flash.1", "#{prefix}/../../../share/man/man1"
  end
end
