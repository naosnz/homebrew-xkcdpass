# Homebrew Formula to install Python XKCDPass
#
# https://pypi.org/project/xkcdpass/
# https://github.com/redacted/XKCD-password-generator
#
# Written by Ewen McNeill <ewen@naos.co.nz>, 2022-02-09
# Updated by Ewen McNeill <ewen@naos.co.nz>, 2023-10-06
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
  url "https://files.pythonhosted.org/packages/1b/46/cc09b4bd9115814f084c188df93d547695be15f0b728a02445ef2366b867/xkcdpass-1.19.4.tar.gz"
  sha256 "2935d54b482d19bcb54656bda01cbbec9ee41ffd42d235a52705fd95cab70fd7"
  license "BSD-3-Clause"

  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # TODO: Figure out how to run tests
    #
    system "true"
  end
end
