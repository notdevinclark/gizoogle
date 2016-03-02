defmodule Gizoogle do
  @moduledoc """
  A client for gizoogle.net
  """

  @base_url "http://www.gizoogle.net"

  @doc """
  Translates yo' text so you can drop a rhyme like a thug

  Example:

      iex> Gizoogle.translate("My friends call me Richard because they know I make lots of money")
      "My fuckin playaz call me Slick Rick cuz they know I make fuckin shitloadz of scrilla"
  """
  @spec translate(String.t) :: String.t
  def translate(text) do
    HTTPoison.post("#{@base_url}/textilizer.php", {:form, [translatetext: text]})
    |> handle_response
  end

  defp handle_response({:error, reason}), do: "error: #{reason}"
  defp handle_response({:ok, %HTTPoison.Response{body: body}}) do
    Gizoogle.Parser.parse_textilizer(body)
  end

  @doc """
  Takes a query strang n' returns a url dat is ghon be translated ta be pure thug

  When given a url, it translates tha page, otherwise it returns a Gizoogle search

  Example:

      iex> Gizoogle.url("https://example.com")
      "http://www.gizoogle.net/tranzizzle.php?search=https%3A%2F%2Fexample.com&se=Go+Git+Dis+Shiznit"
  """
  @spec url(String.t) :: String.t
  def url(query) do
    params = URI.encode_query search: query, se: "Go Git Dis Shiznit"
    "#{@base_url}/tranzizzle.php?#{params}"
  end
end
