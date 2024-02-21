class CreateDpagApp < Formula
  desc "A simple tool to clone GitHub repos into a directory with the same name"
  homepage "https://github.com/LundIT/create-dpag-app"
  url "https://github.com/LundIT/create-dpag-app/archive/v0.0.1.tar.gz"
  sha256 "your_tarball's_sha256_checksum"

  depends_on "python@3.10"

  def install
    bin.install "create_dpag_app.py" => "create-dpag-app"
  end

  test do
    system "#{bin}/create-dpag-app", "--version"
  end
end