# Changelog for Unicode Guards v0.3.1

This is the changelog for Unicode Guards v0.3.1 released on May 21st, 2020.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

## Bug Fixes

* Fix escape sequences in `is_whitespace/2` guard. Thanks to @nickdichev, closes #1

# Changelog for Unicode Guards v0.3.0

This is the changelog for Unicode Guards v0.3.0 released on March 14th, 2020.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

## Enhancements

* Add `is_printable/1` that uses the same semantics as `String.printable?/1`
* Add `is_visible/1` that uses the Unicode set `[[:L:][:N:][:M:][:P:][:S:][:Zs:]]`

# Changelog for Unicode Guards v0.2.0

This is the changelog for Unicode Guards v0.2.0 released on March 11th, 2020.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

## Enhancements

* Add guards for quote marks. Adds:

  * `is_quote_mark/1`
  * `is_quote_mark_left/1`
  * `is_quote_mark_right/1`
  * `is_quote_mark_ambidextrous/1`
  * `is_quote_mark_single/1`
  * `is_quote_mark_double/1`

# Changelog for Unicode Guards v0.1.1

This is the changelog for Unicode Guards v0.1.1 released on February 25th, 2020.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

### Bug Fixes

* Corrects `is_whitespace/1` to include the expected characters in the range `0x9-0xd`. These comprise carriage return, newline, vertical tab and tab which are commonly considered by regex engines to be whitespace.

# Changelog for Unicode Guards v0.1.0

This is the changelog for Unicode Guards v0.1.0 released on November 23rd, 2019.  For older changelogs please consult the release tag on [GitHub](https://github.com/elixir-unicode/unicode_guards/tags)

Initial release.
