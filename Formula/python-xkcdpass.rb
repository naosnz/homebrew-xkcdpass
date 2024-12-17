# Homebrew Formula to install Python XKCDPass
#
# https://pypi.org/project/xkcdpass/
# https://github.com/redacted/XKCD-password-generator
#
# Written by Ewen McNeill <ewen@naos.co.nz>, 2022-02-09
# Updated by Ewen McNeill <ewen@naos.co.nz>, 2024-12-17
#
#---------------------------------------------------------------------------
# SPDX-License-Identifier: MIT
# 
# Copyright 2022 Naos Limited
# 
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# “Software”), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject
# to the following conditions:
# 
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR
# ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
# CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#---------------------------------------------------------------------------

class PythonXkcdpass < Formula
  include Language::Python::Virtualenv

  desc "Password generator inspired by XKCD 936 written in Python"
  homepage "https://github.com/redacted/XKCD-password-generator"
  url "https://files.pythonhosted.org/packages/31/f8/14f147b1c7407ce70000ccd1819295c5d3c328d8ebed0840bb461ba71655/xkcdpass-1.19.9.tar.gz"
  sha256 "a94f871bda870668e5c65eb84296e939600362df2cc036b91c5ca3815bd292d7"
  license "BSD-3-Clause"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # For now we simply test that we can run the program without a shell
    # error code, and that we get the default expected number of words in
    # the output
    #
    system "#{bin}/xkcdpass"
    run_output = shell_output("#{bin}/xkcdpass -n 5").strip
    assert_equal(5, run_output.split(' ').size)
  end
end
