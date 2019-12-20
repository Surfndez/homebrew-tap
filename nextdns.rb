# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.3.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nextdns/nextdns/releases/download/v1.3.4/nextdns_1.3.4_darwin_amd64.tar.gz"
    sha256 "af0087d6ebb354691c04cf00f9892294657a57ca38efaf710e7fb80e510a65dc"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.3.4/nextdns_1.3.4_linux_amd64.tar.gz"
      sha256 "0a9461a9197b2a2d5bee4db0d28b6b65cfa6d1580f6676e94c5bf9c332e74843"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nextdns/nextdns/releases/download/v1.3.4/nextdns_1.3.4_linux_arm64.tar.gz"
        sha256 "3130a011e9adc2ee3e89ab4cd30c5251f995e5394a67a38c527a1f5c3a356c3e"
      else
        url "https://github.com/nextdns/nextdns/releases/download/v1.3.4/nextdns_1.3.4_linux_armv6.tar.gz"
        sha256 "5b56c436f622164ec82124175c215a0b2574d21c4e2e6a1e084ee54f6def0c26"
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
