require "formula"

class Stm32flash < Formula
  homepage "https://code.google.com/p/stm32flash/"
  version "20141004"
  url "https://gitorious.org/stm32flash/stm32flash/archive/ba7602d84be9b5f45c257c7abccc78e8257eeda5.tar.gz"
  sha1 "363731e1d0aba9eec818858a52b30fdc506d2022"

  def install
    system "make"
    system "install", "-d", "#{prefix}/bin"
    system "install", "-m", "755", "stm32flash", "#{prefix}/bin"
    system "install", "-m", "644", "stm32flash.1", "#{prefix}/../../../share/man/man1"
  end
end
