class Mctl < Formula
  desc "Membrane CLI"
  homepage "https://www.membrane.io"
  url "https://www.membrane.io/mctl-1.2.0-macos-arm.zip"
  sha256 "1ccb22e62528179d355c80e901e95a333376420b469226cfe65db69c651759ce"

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
