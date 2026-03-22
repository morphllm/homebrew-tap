class Mh < Formula
  desc "CLI for code.morphllm.com - manage repos, issues, PRs, and CI/CD"
  homepage "https://code.morphllm.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://code.morphllm.com/attachments/6b29b558-c6ac-408e-ae52-6720fd9e188b"
      sha256 "e15a1a83dc19027dd5963bc5627a95eae3c54f0ba36a61aa4ae6ca79429fa690"
    else
      url "https://code.morphllm.com/attachments/9fc543b2-728c-4a4c-9dc4-61d28d4c93f1"
      sha256 "30693aa41d705c78885bcaf4ba0a4fc7bd21b1a66e8739f88759ccf9c0db726f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://code.morphllm.com/attachments/b3c17728-2f61-4f85-a44b-49e2a1036dea"
      sha256 "80a4c34e4a484efb023273004856057d5202e4ec3987dbf62b59caf97ac420e1"
    else
      url "https://code.morphllm.com/attachments/ca2f4f02-9d8a-4de9-b635-b0306b99c46f"
      sha256 "bc1bf4007947c3e727b668c5eb738fec2ceedd55489985f35a5e4a6b5c04437f"
    end
  end

  def install
    bin.install Dir["*"].first => "mh"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/mh --version")
  end
end
