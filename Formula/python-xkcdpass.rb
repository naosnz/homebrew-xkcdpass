# Homebrew Formula to install Python XKCDPass
#
# https://pypi.org/project/xkcdpass/
# https://github.com/redacted/XKCD-password-generator
#
# Written by Ewen McNeill <ewen@naos.co.nz>, 2022-02-09
# Updated by Ewen McNeill <ewen@naos.co.nz>, 2024-02-12
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
  url "https://files.pythonhosted.org/packages/d3/51/0c350b4bd98e532056d57171bdc334a0f5c2bcb5d894ba88b2066ffb2bed/xkcdpass-1.19.8.tar.gz"
  sha256 "30afff4399b83de362a11b26c4768c6cddb1edae12920572d31931baf9d4b9fa"
  license "BSD-3-Clause"

  depends_on "python@3.12"

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
