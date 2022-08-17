class Gtkcord4 < Formula
  desc "Gtk4 Discord client"
  homepage "https://github.com/diamondburned/gtkcord4"
  url "https://github.com/diamondburned/gtkcord4/archive/refs/tags/v0.0.3-2.tar.gz"
  sha256 "6b872107b11b7264790c6c7c1d24ec73e3d336627e1501dd57f2d8982e5c7d3d"
  license "GPL-3.0-or-later"

  depends_on "go" => :build
  depends_on "gobject-introspection" => :build
  depends_on "gtk4" => :build
  depends_on "libcanberra"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin.to_s/"gtkcord", "--help"
  end
end
