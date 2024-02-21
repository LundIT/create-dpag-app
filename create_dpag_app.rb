# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CreateDpagApp < Formula
  include Language::Python::Virtualenv

  desc "A simple tool to clone GitHub repos into a directory with the same name"
  homepage "https://github.com/LundIT/create-dpag-app"
  url "https://github.com/LundIT/create-dpag-app/archive/v0.0.2.tar.gz"
  sha256 "f9d8312cda90889891a846ff3ddd246ccd1d8e420a07b53404284980dfb90d0c"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test create-dpag-app`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end