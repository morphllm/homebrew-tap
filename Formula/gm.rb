class Gm < Formula
  desc "CLI for gitmorph.com - manage repos, issues, PRs, and CI/CD"
  homepage "https://gitmorph.com"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://gitmorph.com/morphllm/releases/releases/download/v0.2.5/gm-darwin-arm64"
      sha256 "4ad8ab77a0a4914a71ba7bae192729f2ac7c6c17e67cc6dddc5cfeca06cbd07f"
    else
      url "https://gitmorph.com/morphllm/releases/releases/download/v0.2.5/gm-darwin-amd64"
      sha256 "50d69df15231f0d41d1521b1acbd1e10152e16526d658a0eb15754b23c0048c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://gitmorph.com/morphllm/releases/releases/download/v0.2.5/gm-linux-arm64"
      sha256 "c88ce9dd131e42a62b7600cf92f9e2e7f38838603ac5aa8bbc38afe064c36884"
    else
      url "https://gitmorph.com/morphllm/releases/releases/download/v0.2.5/gm-linux-amd64"
      sha256 "7598508698880c6fa3a271170adaa20b6775775d6e67050ca6f0fc20a67a8583"
    end
  end

  def install
    bin.install Dir["*"].first => "gm"
  end

  test do
    assert_match "0.2.5", shell_output("#{bin}/gm --version")
  end
end
