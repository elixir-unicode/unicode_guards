defmodule Unicode.GuardsTest do
  use ExUnit.Case
  doctest Unicode.Guards

  test "defining and executing guards" do
    defmodule Guards do
      import Unicode.Guards

      def upper(<< x :: utf8, _rest :: binary >>) when is_upper(x), do: :upper
      def lower(<< x :: utf8, _rest :: binary >>) when is_lower(x), do: :lower
      def digit(<< x :: utf8, _rest :: binary >>) when is_digit(x), do: :digit
      def whitespace(<< x :: utf8, _rest :: binary >>) when is_whitespace(x), do: :whitespace
      def currency(<< x :: utf8, _rest :: binary >>) when is_currency_symbol(x), do: :currency
    end

    assert Guards.upper("A") == :upper
    assert Guards.lower("a") == :lower
    assert Guards.digit("3") == :digit
    assert Guards.whitespace(" ") == :whitespace
    assert Guards.currency("$") == :currency
  end
end
