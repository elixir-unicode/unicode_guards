# Unicode Guards

Provides a set of function guards that can be used to match Unicode codepoints.  Based upon [ex_unicode](https://hex.pm/packages/ex_unicode) and [unicode_set](https://hex.pm/packages/unicode_set).

## Usage

Each guard operates on a UTF8 codepoint since the permitted operators in a guard clause are restricted to simple comparisons that do not include strings.

The data that underpins these guards is generated from the Unicode character database and therefore
includes a broad range of scripts well beyond the basic ASCII definitions.

Some examples follow defining functions using the pre-defined guards. Note that since guards operate on codepoints (not strings) we use binary pattern matching to extract the first codepoint for these example.

```elixir
defmodule Guards do
  import Unicode.Guards

  def upper(<< x :: utf8, _rest :: binary >>) when is_upper(x), do: :upper
  def lower(<< x :: utf8, _rest :: binary >>) when is_lower(x), do: :lower
  def digit(<< x :: utf8, _rest :: binary >>) when is_digit(x), do: :digit
  def whitespace(<< x :: utf8, _rest :: binary >>) when is_whitespace(x), do: :whitespace
  def currency(<< x :: utf8, _rest :: binary >>) when is_currency_symbol(x), do: :currency
end
```
## Installation

The package can be installed by adding `unicode_guards` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:unicode_guards, "~> 0.1.0"}
  ]
end
```

The docs can be found at [https://hexdocs.pm/unicode_guards](https://hexdocs.pm/unicode_guards).

