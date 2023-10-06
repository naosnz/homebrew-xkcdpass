# xkcdpass Homebrew Formula

[xkcdpass](https://pypi.org/project/xkcdpass/) is an implementation
of the [XKCD 936](https://xkcd.com/936/) approach to password generation:
a bunch of random words, instead of a short set of random characters
that are hard to remember.

The [source to xkcdpass](https://github.com/redacted/XKCD-password-generator) is
on GitHub, under a [3-Clause BSD
license](https://github.com/redacted/XKCD-password-generator/blob/master/LICENSE.BSD).

This Homebrew Formula simply automates installing it on a system with
Homebrew, so that `xkcdpass` can be run directly.

## Installing with Homebrew

`brew install naosnz/xkcdpass/python-xkcdpass`

Or `brew tap naosnz/xkcdpass` and then `brew install python-xkcdpass`.

## Running xkcdpass

`xkcdpass` can be called with no arguments and will produce one
potential password with default lengths.  You can also encourage
it to choose particular lengths of words and numbers of words.

See the `xkcdpass --help` output, and the [xkcdpass README
file](https://github.com/redacted/XKCD-password-generator#running-xkcdpass)
for more details on options available.

## Licensing

[xkcdpass](https://github.com/redacted/XKCD-password-generator) is
available under an Apache 2.0 license.  This Homebrew Formula to
facilitate installing it is available under a MIT License; see the
[LICENSE](LICENSE) file for the text of the MIT License.
