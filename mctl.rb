class Mctl < Formula
  desc "Membrane CLI"
  homepage "https://www.membrane.io"
  url "https://www.membrane.io/mctl-1.3.0-macos-arm.zip"
  sha256 "a5fc26461ef27c08bbf084b359201284136f64c6d6b4239082daca21ddd227e1"

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

