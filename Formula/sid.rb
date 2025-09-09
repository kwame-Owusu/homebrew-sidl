class Sidl < Formula
  desc "CLI tool to get information about Twilio SIDs"
  homepage "https://github.com/kwame-Owusu/sidl"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-darwin-arm64.tar.gz"
      sha256 "e620163f32f84fd69a40d80d178dc1bf47e269817456f6e29442262065ec790c"
    else
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-darwin-amd64.tar.gz"
      sha256 "ad8438989f510cf6aebbb2bc10ca6bc222ec36060f2d0db608dd03c0b0dd5f94"
    end
  end

  on_linux do
    if Hardware::CPU.amd? && Hardware::CPU.is_64_bit?
      url "https://github.com/kwame-Owusu/sidl/releases/download/v1.0.0/sidl-linux-amd64.tar.gz"
      sha256 "d7f2396ccc03c4d193018d91bb174679d7eac003a9c308d0a4d32abb9545049e"
    end
  end

  def install
    bin.install "sidl"
  end

  test do
    system "#{bin}/sidl", "--version"
  end
end

