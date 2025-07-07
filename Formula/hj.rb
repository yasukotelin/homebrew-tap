class Hj < Formula
  desc "History Jump Tool - fzf-powered directory navigation with frecency"
  homepage "https://github.com/yasukotelin/hj"
  url "https://github.com/yasukotelin/hj/archive/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "hj.sh" => "hj"
  end

  def caveats
    <<~EOS
      To use hj, add this to your shell profile:
        echo 'source $(brew --prefix)/bin/hj' >> ~/.bashrc
        # or
        echo 'source $(brew --prefix)/bin/hj' >> ~/.zshrc

      Then restart your shell or run:
        source ~/.bashrc  # or ~/.zshrc
    EOS
  end

  test do
    system "#{bin}/hj", "--help"
  end
end