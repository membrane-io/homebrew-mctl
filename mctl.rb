class Mctl < Formula
  desc "Membrane CLI"
  homepage "https://www.membrane.io"
  url "https://www.membrane.io/mctl-1.0.0-macos-arm.zip"
  sha256 "fc06a1918606cf5930fc4dd46f7c9482075b3a02715b3100bd76f8aed5a225be"

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
