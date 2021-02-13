require "formula"

class Stm32flash < Formula
  homepage "https://code.google.com/p/stm32flash/"
  version "20210213"
  url "https://sourceforge.net/projects/stm32flash/files/stm32flash-0.6.tar.gz/download"
  sha256 "ee9b40d4d3e5cd28b993e08ae2a2c3c559b6bea8730cd7e1d40727dedb1dda09"

  def install
    system "make"
    system "install", "-d", "#{prefix}/bin"
    system "install", "-m", "755", "stm32flash", "#{prefix}/bin"
  end
end
