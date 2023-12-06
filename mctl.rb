class Mctl < Formula
  desc "Membrane CLI"
  homepage "https://www.membrane.io"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/membrane-io/mctl-releases/releases/download/1.9.1/mctl-1.9.1-macos-x86.zip"
      sha256 "7a1f88ab6c759cc9f2da7d56f0e2653e6b9b9a16b31b4de09e2f1f29a77b1640"
    elsif Hardware::CPU.arm?
      url "https://github.com/membrane-io/mctl-releases/releases/download/1.9.1/mctl-1.9.1-macos-arm.zip"
      sha256 "9a603853eb8ddd2a132844553698c40cca8932a44f33237710388b62de5055b4"
    end
  end

  def install
    bin.install "mctl" => "mctl"
  end

  test do
    system "which", "mctl"
  end
end

