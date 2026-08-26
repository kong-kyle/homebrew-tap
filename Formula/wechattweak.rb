class Wechattweak < Formula
  desc "Command-line tool for tweaking WeChat"
  homepage "https://github.com/kong-kyle/WeChatTweak-kylekonge"
  url "https://github.com/kong-kyle/WeChatTweak-kylekonge/releases/download/v1.0.1/wechattweak"
  sha256 "0f088ee0c01dc72c4e275b846d53b05235269710f0403564073dc578bc290d1a"
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
