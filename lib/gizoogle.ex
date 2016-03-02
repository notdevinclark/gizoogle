defmodule Gizoogle do
  @moduledoc """
  A client for gizoogle.net
  """

  @translate_url "http://www.gizoogle.net/textilizer.php"

  @doc """
  Translates yo' text so you can drop a rhyme like a thug

  Example:

      iex> Gizoogle.translate("My friends call me Richard because they know I make lots of money")
      "My fuckin playaz call me Slick Rick cuz they know I make fuckin shitloadz of scrilla"
  """
  @spec translate(String.t) :: String.t
  def translate(text) do
    HTTPoison.post(@translate_url, {:form, [translatetext: text]})
    |> handle_response
  end

  defp handle_response({:error, reason}), do: "error: #{reason}"
  defp handle_response({:ok, %HTTPoison.Response{body: body}}) do
    Gizoogle.Parser.parse_textilizer(body)
  end
end
