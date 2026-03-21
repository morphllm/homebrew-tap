class Mh < Formula
  desc "CLI for code.morphllm.com - manage repos, issues, PRs, and CI/CD"
  homepage "https://code.morphllm.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://code.morphllm.com/bhaktateas/cli/releases/download/v#{version}/mh-darwin-arm64"
      sha256 "2574da678eb5ee47b811aa2ab3544fd0605700f92331b64812a9ca65870a25a6"
    else
      url "https://code.morphllm.com/bhaktateas/cli/releases/download/v#{version}/mh-darwin-amd64"
      sha256 "09def0587f57bd0e9c70b7e3fd9536f60cab24770857c057a48a48697f5d3ffb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://code.morphllm.com/bhaktateas/cli/releases/download/v#{version}/mh-linux-arm64"
      sha256 "65163f52cd7bc0f774a2f0b0aea6db3360fc61dbca62db3ae41f531720ae8c8a"
    else
      url "https://code.morphllm.com/bhaktateas/cli/releases/download/v#{version}/mh-linux-amd64"
      sha256 "2a61d2806922ad5c0ef62df3253f8dd82c9f2a41a05bb25228968b1bcbfb5564"
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
