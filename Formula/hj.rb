class Hj < Formula
  desc "History Jump Tool - fzf-powered directory navigation with frecency"
  homepage "https://github.com/yasukotelin/hj"
  url "https://github.com/yasukotelin/hj/archive/v1.0.0.tar.gz"
  sha256 "9b1a600db5c3672b01f1727d98102633907bdacb4b2fde73c920b79f684771b4"
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