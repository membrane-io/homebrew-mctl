class Mctl < Formula
  desc "Membrane CLI"
  homepage "https://www.membrane.io"
  url "https://www.membrane.io/mctl-1.4.0-macos-arm.zip"
  sha256 "3c62c808ffc7d007e9c2d9ed8b059c3e24298b552ae85a1f5e1c67ce4897b6b0"

  def install
    bin.install "mctl" => "mctl"
    # bash_completion.install "completion/mctl.bash"
    # zsh_completion.install "completion/mctl.zsh" => "_kubetail"
    # fish_completion.install "completion/mctl.fish"
  end

  test do
    system "which", "mctl"
  end
end

