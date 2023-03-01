class Mctl < Formula
  desc "Membrane CLI"
  homepage "https://www.membrane.io"
  url "https://www.membrane.io/mctl-1.0.1-macos-arm.zip"
  sha256 "6ac84cba79847055a0e7fadf58f05982fb8fd5eaf2c0128c764613daf2e8ef66"

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
