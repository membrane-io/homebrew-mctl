class Mctl < Formula
  desc "Membrane CLI"
  homepage "https://www.membrane.io"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/membrane-io/mctl-releases/releases/download/1.6.0/mctl-1.6.0-x86-arm.zip"
      sha256 "c99a79bb015f61222d282f762a5bf99fa6b3ef3fac072555ee66c3f51abdf54f"
    elsif Hardware::CPU.arm?
      url "https://github.com/membrane-io/mctl-releases/releases/download/1.6.0/mctl-1.6.0-macos-arm.zip"
      sha256 "6d6338367d41a4127b1bc01f31c9b2a2041ecbc3dede2e4eecaeb34e7a69e0e0"
    end
  end

  def install
    bin.install "mctl" => "mctl"
  end

  test do
    system "which", "mctl"
  end
end

