# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.4.23"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nextdns/nextdns/releases/download/v1.4.23/nextdns_1.4.23_darwin_amd64.tar.gz"
    sha256 "12b0f11bb9243f4e447d7c3b4b4a7653d4050726ea45aea4dabbc8ca415d561e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.4.23/nextdns_1.4.23_linux_amd64.tar.gz"
      sha256 "17495d681e9c9e20f2c5257021052030a55bec30e64cdec28765b77fcca4954b"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nextdns/nextdns/releases/download/v1.4.23/nextdns_1.4.23_linux_arm64.tar.gz"
        sha256 "a62c2361965f741fd5293184558e63d8918df63b3a49091842140c0f4fb97927"
      else
        url "https://github.com/nextdns/nextdns/releases/download/v1.4.23/nextdns_1.4.23_linux_armv6.tar.gz"
        sha256 "5d422bf83e4ea8aaec133c59e5c236310f7a302222d7ea7461e51021ab28bcaa"
      end
    end
  end

  def install
    bin.install "nextdns"
  end

  def caveats; <<~EOS
    To install NextDNS, run the following command:
    sudo nextdns install --config <your_conf_id>
    Then setup your DNS manually to 127.0.0.1 or by running:
    sudo nextdns activate
  EOS
  end
end
