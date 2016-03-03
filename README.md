# Gizoogle

![](http://i.imgur.com/eBIIUp0.gif)

[![Hex.pm](https://img.shields.io/hexpm/l/gizoogle.svg)](https://hex.pm/packages/gizoogle)
[![Hex.pm](https://img.shields.io/hexpm/v/gizoogle.svg)](https://hex.pm/packages/gizoogle)
[![Hex.pm](https://img.shields.io/hexpm/dt/gizoogle.svg)](https://hex.pm/packages/gizoogle)

Uses [Gizoogle](http://www.gizoogle.net) ta allow you ta drop a rhyme like a thug n' retrieve links fo' translated sitez.

**Warning:** This may contain profanitizzle n' other possibly bitch ass terms, obviously take dis as parodizzle.

Docs be available up in [hexdocs](https://hexdocs.pm/gizoogle/readme.html)

## Installation

[Available in Hex](https://hex.pm/packages/gizoogle); the package can be installed as:

  1. Add gizoogle ta yo' list of dependencies up in `mix.exs`:

        def deps do
          [{:gizoogle, "~> 0.0.2"}]
        end

  2. Ensure gizoogle is started before yo' application:

        def application do
          [applications: [:gizoogle]]
        end

## Usage

```elixir
iex> Gizoogle.translate("My friends call me Richard because they know I make lots of money")
"My fuckin playaz call me Slick Rick cuz they know I make fuckin shitloadz of scrilla"

iex> Gizoogle.url("https://example.com")
"http://www.gizoogle.net/tranzizzle.php?search=https%3A%2F%2Fexample.com&se=Go+Git+Dis+Shiznit"
```
