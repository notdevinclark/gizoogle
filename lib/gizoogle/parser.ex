defmodule Gizoogle.Parser do
  @moduledoc """
  A parser for Gizoogle.net
  """

  import Record
  defrecord :xmlElement, extract(:xmlElement, from_lib: "xmerl/include/xmerl.hrl")
  defrecord :xmlText,    extract(:xmlText,    from_lib: "xmerl/include/xmerl.hrl")

  @doc """
  Parses tha html dat comes back from gizoogle.net n' extracts tha translated text
  """
  @spec parse_textilizer(String.t) :: String.t
  def parse_textilizer(html), do: html |> fix |> scan |> parse

  defp fix(html) do
    html
    |> String.replace("favicon.ico\">", "favicon.ico\" />")
    |> String.replace(~r/name="translatetext"[^>]*>/, "name=\"translatetext\" >")
  end

  defp scan(text) do
    :xmerl_scan.string(String.to_char_list(text))
  end

  defp parse({html, _}) do
    [element] = :xmerl_xpath.string('//textarea[last()]', html)
    [text] = xmlElement(element, :content)
    xmlText(text, :value)
    |> to_string
  end
end
