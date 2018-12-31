class TaskSpooler < Formula
  desc "Batch system to run tasks one after another"
  homepage "https://vicerveza.homeunix.net/~viric/soft/ts/"
  url "https://vicerveza.homeunix.net/~viric/soft/ts/ts-1.0.tar.gz"
  sha256 "4f53e34fff0bb24caaa44cdf7598fd02f3e5fa7cacaea43fa0d081d03ffbb395"

  def install
    system "make", "install", "PREFIX=#{prefix}"
    mv bin/"ts", bin/"tsp"
    mv man1/"ts.1", man1/"tsp.1"
  end

  test do
    system "#{bin}/tsp", "-l"
  end
end
