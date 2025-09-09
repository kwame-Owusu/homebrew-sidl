class Sidl < Formula
  desc "CLI tool to get information about Twilio SIDs"
  homepage "https://github.com/kwame-Owusu/sidl"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-darwin-arm64.tar.gz"
      sha256 "d7dffed21e6b3d737ea16bd86a6b74d54af8e99c2c34f5e7e4e7102c7705bb91"
    else
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-darwin-amd64.tar.gz"
      sha256 "320b71e8521f2f82a6ed5f5837c4217cf7a1408d3a6c0965991f272261133adc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-linux-amd64.tar.gz"
      sha256 "30f0179405abf9c433837fc043ac67f1485494513d31b7946be3ec091095eb28"
    end
  end

  def install
    bin.install "sidl"
  end

  test do
    system "#{bin}/sidl", "--version"
  end
end

