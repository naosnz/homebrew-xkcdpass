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
  url "https://files.pythonhosted.org/packages/ca/70/e34428fca48054f071e00e9252e7e78b37c573fe8f57c0a2c29976f72b75/xkcdpass-1.19.3.tar.gz"
  sha256 "c5a2e948746da6fe504e8404284f457d8e98da6df5047c6bb3f71b18882e9d2a"
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
