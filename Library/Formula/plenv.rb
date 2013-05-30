require 'formula'

class Plenv < Formula
  homepage 'https://github.com/tokuhirom/plenv'
  url 'https://github.com/tokuhirom/plenv/archive/1.9.2.zip'
  sha1 'ba4e17695157a1f88257b3393e9bc6178fc5ac29'

  head 'https://github.com/tokuhirom/plenv.git'

  def install
    inreplace 'libexec/plenv', '/usr/local', HOMEBREW_PREFIX
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent
    To use Homebrew's directories rather than ~/.plenv add to your profile:
      export PLENV_ROOT=#{var}/plenv

    To enable shims and autocompletion add to your profile:
      if which plenv > /dev/null; then eval "$(plenv init -)"; fi
    EOS
  end
end
