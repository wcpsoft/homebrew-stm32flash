require "formula"

class Stm32flash < Formula
  homepage "https://code.google.com/p/stm32flash/"
  version "20131218"
  url "https://gitorious.org/stm32flash/stm32flash/archive/8399fbe1baf2b7d097746786458021d92895d71b.tar.gz"
  sha1 "80c8683b6221941b59cc372cc827140211fde973"

  def install
    system "make"
    system "install", "-d", "#{prefix}/bin"
    system "install", "-m", "755", "stm32flash", "#{prefix}/bin"
    system "install", "-m", "644", "stm32flash.1", "#{prefix}/../../../share/man/man1"
  end
end
