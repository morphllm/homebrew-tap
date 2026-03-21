class Mh < Formula
  desc "CLI for code.morphllm.com - manage repos, issues, PRs, and CI/CD"
  homepage "https://code.morphllm.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://code.morphllm.com/morphllm/cli/releases/download/v#{version}/mh-darwin-arm64"
      sha256 "PLACEHOLDER_DARWIN_ARM64_SHA256"
    else
      url "https://code.morphllm.com/morphllm/cli/releases/download/v#{version}/mh-darwin-amd64"
      sha256 "PLACEHOLDER_DARWIN_AMD64_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://code.morphllm.com/morphllm/cli/releases/download/v#{version}/mh-linux-arm64"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
    else
      url "https://code.morphllm.com/morphllm/cli/releases/download/v#{version}/mh-linux-amd64"
      sha256 "PLACEHOLDER_LINUX_AMD64_SHA256"
    end
  end

  def install
    binary = Dir["mh-*"].first || "mh"
    bin.install binary => "mh"
  end

  test do
    assert_match "mh", shell_output("#{bin}/mh --version")
  end
end
