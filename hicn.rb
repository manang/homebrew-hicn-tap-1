class Hicn < Formula
  desc "Hicn stack"
  homepage "https://wiki.fd.io/view/HICN"
  url "https://github.com/FDio/hicn/archive/master.zip"
  version "19.04-40-g052cc4a"
  sha256 "882fd804ebfd01a84c1950b8e1b1ef3816f080e28416bdbbe951b36aa12249de"
  depends_on "cmake" => :build
  depends_on "libparc"
  depends_on "curl"
  depends_on "asio"
  def install
    system "cmake", ".", "-DBUILD_APPS=ON",*std_cmake_args
    system "make", "install" , "-j"
  end
  test do
    system "false"
  end
end
