class Sidl < Formula
  desc "CLI tool to get information about Twilio SIDs"
  homepage "https://github.com/kwame-Owusu/sidl"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-darwin-amd64"
      sha256 "a4e7f28c14a662c22cca0074a6566642d88746de0e67a5e742ee280f0c55b449"
    else
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-darwin-arm64"
      sha256 "9a23b0fce9ea8f514f884f6cfc69fc11261aec0037781d8d63d72ef7b9357837"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-linux-amd64"
      sha256 "6598b64498ddb62a979d9877c6d1d6d3ebbae97731b205f2053e0b74441da216"
    else
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-linux-arm64"
      sha256 "85968a6cb354cd9019848e1da1f6d8a960493af661ca00e671275b39e2c81aa8"
    end
  end

  def install
    bin.install "sidl"
  end

  test do
    system "#{bin}/sidl", "--version"
  end
end

