# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CreateDpagApp < Formula
  include Language::Python::Virtualenv

  desc "A simple tool to clone GitHub repos into a directory with the same name"
  homepage "https://github.com/LundIT/create-dpag-app"
  url "https://github.com/LundIT/create-dpag-app/archive/v0.0.3.tar.gz"
  sha256 "f80ce59b5504cd26f6f0a45e396cb71a103b99abd6e03aad9364cf49ff1c90c3"

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