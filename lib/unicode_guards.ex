defmodule Unicode.Guards do
  @moduledoc """
  Defines a set of guards that can be used with
  Elixir functions.

  Each guard operates on a UTF8 codepoint since
  the permitted operators in a guard clause
  are restricted to simple comparisons that do
  not include string comparators.

  The data that underpins these guards is generated
  from the Unicode character database and therefore
  includes a broad range of scripts well beyond
  the basic ASCII definitions.

  """

  require Unicode.Set
  import Unicode.Set, only: [match?: 2]
  import Kernel, except: [match?: 2]

  @doc """
  Guards whether a UTF8 codepoint is an upper case
  character.

  The match is for any UTF8 character that is defined
  in Unicode to be an upper case character in any
  script.

  """
  defguard is_upper(codepoint) when is_integer(codepoint) and match?(codepoint, "[[:Lu:]]")

  @doc """
  Guards whether a UTF8 codepoint is a lower case
  character.

  The match is for any UTF8 character that is defined
  in Unicode to be an lower case character in any
  script.

  """
  defguard is_lower(codepoint) when is_integer(codepoint) and match?(codepoint, "[[:Ll:]]")

  @doc """
  Guards whether a UTF8 codepoint is a digit
  character.

  This guard will match any digit character from any
  Unicode script, not only the ASCII decimal digits.

  """
  defguard is_digit(codepoint) when is_integer(codepoint) and match?(codepoint, "[[:Nd:]]")

  @doc """
  Guards whether a UTF8 codepoint is a currency symbol
  character.

  """
  defguard is_currency_symbol(codepoint)
           when is_integer(codepoint) and match?(codepoint, "[[:Sc:]]")

  @doc """
  Guards whether a UTF8 codepoint is a whitespace symbol
  character.

  This includes the Unicode set `Zs` plus the characters in the range `0x9`-`0xd`
  which incudes tab, newline and carriage return.

  """
  defguard is_whitespace(codepoint)
           when is_integer(codepoint) and match?(codepoint, "[[\\u0009-\\u000d][:Zs:]]")

  @doc """
  Guards whether a UTF8 codepoint is a unicode separator symbol
  character.

  This includes the Unicode set `Zs` plus the characters.

  """
  defguard is_separator(codepoint)
           when is_integer(codepoint) and match?(codepoint, "[[:Zs:]]")

  @doc """
  Guards whether a UTF8 codepoint is a unicode quote symbol
  character.

  This includes the Unicode set `Pi`, `Pf` and
  other characters documents in this [Wikpedia article](https://en.wikipedia.org/wiki/Quotation_mark).

  See also `Unicode.Category.QuoteMarks`.

  """
  defguard is_quote_mark(codepoint)
           when is_integer(codepoint) and match?(codepoint, "[[:QuoteMark:]]")

  @doc """
  Guards whether a UTF8 codepoint is a unicode left quote symbol
  character.

  See also `Unicode.Category.QuoteMarks`.

  """
  defguard is_quote_mark_left(codepoint)
           when is_integer(codepoint) and match?(codepoint, "[[:QuoteMarkLeft:]]")

  @doc """
  Guards whether a UTF8 codepoint is a unicode right quote symbol
  character.

  See also `Unicode.Category.QuoteMarks`.

  """
  defguard is_quote_mark_right(codepoint)
           when is_integer(codepoint) and match?(codepoint, "[[:QuoteMarkRight:]]")

  @doc """
  Guards whether a UTF8 codepoint is a unicode quote symbol that can
  be used either left or right.

  See also `Unicode.Category.QuoteMarks`.

  """
  defguard is_quote_mark_ambidextrous(codepoint)
           when is_integer(codepoint) and match?(codepoint, "[[:QuoteMarkAmbidextrous:]]")

  @doc """
  Guards whether a UTF8 codepoint is a unicode quote symbol that is
  considered a single quote.

  See also `Unicode.Category.QuoteMarks`.

  """
  defguard is_quote_mark_single(codepoint)
           when is_integer(codepoint) and match?(codepoint, "[[:QuoteMarkSingle:]]")

  @doc """
  Guards whether a UTF8 codepoint is a unicode quote symbol that is
  considered a single quote.

  See also `Unicode.Category.QuoteMarks`.

  """
  defguard is_quote_mark_double(codepoint)
           when is_integer(codepoint) and match?(codepoint, "[[:QuoteMarkDouble:]]")

  @doc """
  Guards whether a UTF8 codepoint is a printable.

  The definition of what is printable is the same as
  used by `String.printable?/1`

  """
  defguard is_printable(codepoint)
           when is_integer(codepoint) and match?(codepoint, "[[:printable:]]")

  @doc """
  Guards whether a UTF8 codepoint is a visible.

  The definition is a combination of `L`, `N`,
  `M`, `P`, `S` and `Zs` categories.

  This is the solution most commonly cited on stackexchange
  although it has no standardization behind it.

  """
  defguard is_visible(codepoint)
           when is_integer(codepoint) and match?(codepoint, "[[:visible:]]")
end
