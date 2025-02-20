# Changelog

## Unicode Guards v1.0.1

This is the changelog for Unicode Guards v1.0.1 released on February 21st, 2025.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

### Bug Fixes

* Use `defmacro` instead of `defguard` for some guards to avoid implementation limits on OTP 27. Issue to be explored further upstream with Elixir and OTP. THanks to @vlemann for the PR, greatly appreciated. Closes #9.

## Unicode Guards v1.0.0

This is the changelog for Unicode Guards v1.0.0 released on September 14th, 2021.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

### Enhancments

* Update to use [Unicode 14](https://unicode.org/versions/Unicode14.0.0) release data.

## Unicode Guards v0.5.1

This is the changelog for Unicode Guards v0.5.1 released on May 25th, 2021.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

### Bug Fixes

* Fix dependency configuration to mark `ex_doc` and `benchee` as optional. Thanks to @everettvody.

## Unicode Guards v0.5.0

This is the changelog for Unicode Guards v0.5.0 released on December 5th, 2020.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

### Bug FIxes

* Relax version requirement for `nimble_parsec` to allow `"~> 0.5 or ~> 1.0"`. Thanks to @@fireproofsocks.  Closes #3.

## Unicode Guards v0.4.0

This is the changelog for Unicode Guards v0.4.0 released on October 13th, 2020.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

### Bug FIxes

* Fix `ex_doc` dependency. Thanks to @nickdichev.

### Enhancements

* Add additional guards `is_graph?/1`, `is_blank?/1` and `is_print/1` that match the definitions for Unicode regexes.

## Unicode Guards v0.3.1

This is the changelog for Unicode Guards v0.3.1 released on May 21st, 2020.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

### Bug FIxes

* Fix escape sequences in `is_whitespace/2` guard. Thanks to @nickdichev, closes #1

## Unicode Guards v0.3.0

This is the changelog for Unicode Guards v0.3.0 released on March 14th, 2020.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

### Enhancements

* Add `is_printable/1` that uses the same semantics as `String.printable?/1`
* Add `is_visible/1` that uses the Unicode set `[[:L:][:N:][:M:][:P:][:S:][:Zs:]]`

## Unicode Guards v0.2.0

This is the changelog for Unicode Guards v0.2.0 released on March 11th, 2020.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

### Enhancements

* Add guards for quote marks. Adds:

  * `is_quote_mark/1`
  * `is_quote_mark_left/1`
  * `is_quote_mark_right/1`
  * `is_quote_mark_ambidextrous/1`
  * `is_quote_mark_single/1`
  * `is_quote_mark_double/1`

## Unicode Guards v0.1.1

This is the changelog for Unicode Guards v0.1.1 released on February 25th, 2020.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

### Bug FIxes

* Corrects `is_whitespace/1` to include the expected characters in the range `0x9-0xd`. These comprise carriage return, newline, vertical tab and tab which are commonly considered by regex engines to be whitespace.

## Unicode Guards v0.1.0

This is the changelog for Unicode Guards v0.1.0 released on November 23rd, 2019.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

Initial release.
