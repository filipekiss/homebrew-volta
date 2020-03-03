class Volta < Formula
  desc "Volta: The JavaScript Launcher"
  homepage "https://volta.sh"
  url "https://github.com/volta-cli/volta/releases/download/v0.7.2/volta-0.7.2-macos.tar.gz"
  sha256 "9abaaf2cd6bddac5a776f15755a7feeea34036074a2056998439d94b80bd2270"

  bottle  :unneeded

  def install
    bin.install "volta", "volta-migrate", "volta-shim"
  end

  test do
    output = shell_output("#{bin}/volta --version")
    assert_match "0.7.2", output
  end
end

