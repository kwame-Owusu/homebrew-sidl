class Sidl < Formula
  desc "CLI tool to get information about Twilio SIDs"
  homepage "https://github.com/kwame-Owusu/sidl"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-darwin-arm64.tar.gz"
      sha256 "772d465e4a7be860c3f0c44e0905af974e8c8a21e1509a87924e305caeaaccd1"
    else
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-darwin-amd64.tar.gz"
      sha256 "bceba392f6581c93105b15b8416ccb2e4eb9ece7c23bb3e6b924305319818f40"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-linux-amd64.tar.gz"
      sha256 "6fe5465016b576726e9e7409dd48e14df20ff9c1682a4139e57b8f1c2e69f17f"
    end
  end

  def install
    bin.install "sidl"
  end

  test do
    system "#{bin}/sidl", "--version"
  end
end

