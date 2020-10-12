defmodule Unicode.GuardsTest do
  use ExUnit.Case
  doctest Unicode.Guards

  test "defining and executing guards" do
    defmodule Guards do
      import Unicode.Guards

      def upper(<<x::utf8, _rest::binary>>) when is_upper(x), do: :upper
      def lower(<<x::utf8, _rest::binary>>) when is_lower(x), do: :lower
      def digit(<<x::utf8, _rest::binary>>) when is_digit(x), do: :digit
      def whitespace(<<x::utf8, _rest::binary>>) when is_whitespace(x), do: :whitespace
      def currency(<<x::utf8, _rest::binary>>) when is_currency_symbol(x), do: :currency
    end

    assert Guards.upper("A") == :upper
    assert Guards.lower("a") == :lower
    assert Guards.digit("3") == :digit
    assert Guards.whitespace(" ") == :whitespace
    assert Guards.whitespace("\n") == :whitespace
    assert Guards.whitespace("\t") == :whitespace
    assert Guards.whitespace("\r") == :whitespace
    assert Guards.currency("$") == :currency
  end

  test "quote mark guards" do
    defmodule Quotes do
      import Unicode.Guards

      def quote_mark(<<x::utf8, _rest::binary>>) when is_quote_mark(x), do: :quote_mark
      def single(<<x::utf8, _rest::binary>>) when is_quote_mark_single(x), do: :single
      def double(<<x::utf8, _rest::binary>>) when is_quote_mark_double(x), do: :double
      def left(<<x::utf8, _rest::binary>>) when is_quote_mark_left(x), do: :left
      def right(<<x::utf8, _rest::binary>>) when is_quote_mark_right(x), do: :right

      def ambidextrous(<<x::utf8, _rest::binary>>) when is_quote_mark_ambidextrous(x),
        do: :ambidextrous
    end

    assert Quotes.quote_mark("⠴") == :quote_mark
    assert Quotes.single("\'") == :single
    assert Quotes.double("\"") == :double
    assert Quotes.left("﹁") == :left
    assert Quotes.right("﹂") == :right
    assert Quotes.ambidextrous("\"") == :ambidextrous
  end

  test "printable guards" do
    defmodule Printable do
      import Unicode.Guards

      def printable(<<x::utf8, _rest::binary>>) when is_printable(x), do: :printable
      def printable(_other), do: :not_printable
    end

    assert Printable.printable("a") == :printable
    assert Printable.printable(<<0::utf8>>) == :not_printable
  end
end
