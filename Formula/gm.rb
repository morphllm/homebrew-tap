class Gm < Formula
  desc "CLI for gitmorph.com - manage repos, issues, PRs, and CI/CD"
  homepage "https://gitmorph.com"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://gitmorph.com/morphllm/releases/releases/download/v0.2.6/gm-darwin-arm64"
      sha256 "3d9adea03a0ca9cbe4bf779423d449947af82c7dffe5dffc8738072de205e8d1"
    else
      url "https://gitmorph.com/morphllm/releases/releases/download/v0.2.6/gm-darwin-amd64"
      sha256 "95d0385f08752944b81b49c637e686d2bac297a618122c6ecd3d516881674407"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://gitmorph.com/morphllm/releases/releases/download/v0.2.6/gm-linux-arm64"
      sha256 "bbd0472d0df037f96538487d96daf79d5abbe000c62743aff3faafdea0b2af07"
    else
      url "https://gitmorph.com/morphllm/releases/releases/download/v0.2.6/gm-linux-amd64"
      sha256 "101b40354d22212f1c5802feac454bf891582687ad247e77ffcb6f0c26d66fdf"
    end
  end

  def install
    bin.install Dir["*"].first => "gm"
  end

  test do
    assert_match "0.2.6", shell_output("#{bin}/gm --version")
  end
end
