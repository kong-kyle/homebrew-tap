class Wechattweak < Formula
  desc "Command-line tool for tweaking WeChat"
  homepage "https://github.com/kong-kyle/WeChatTweak-kylekonge"
  url "https://github.com/kong-kyle/WeChatTweak-kylekonge/releases/download/v1.0.0/wechattweak"
  sha256 "1436107f7a6650b695fa9a6f6edaa84d09c69202e07def08cefbc4095d5b9856"
  license "AGPL-3.0"

  depends_on arch: :arm64
  depends_on macos: :monterey

  def install
    bin.install "wechattweak"
    system "xattr", "-c", bin/"wechattweak"
  end

  test do
    system bin/"wechattweak", "--help"
  end
end
