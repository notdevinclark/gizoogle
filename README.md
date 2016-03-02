# Gizoogle

[![Hex.pm](https://img.shields.io/hexpm/l/gizoogle.svg)](https://hex.pm/packages/gizoogle)
[![Hex.pm](https://img.shields.io/hexpm/v/gizoogle.svg)](https://hex.pm/packages/gizoogle)
[![Hex.pm](https://img.shields.io/hexpm/dt/gizoogle.svg)](https://hex.pm/packages/gizoogle)

Allows you ta drop a rhyme like a thug by utilizin [Gizoogle](http://www.gizoogle.net/textilizer.php)

**Warning:** This may contain profanitizzle n' other possibly bitch ass terms, obviously take dis as parodizzle.

Docs be available up in [hexdocs](https://hexdocs.pm/gizoogle/readme.html)

## Installation

[Available in Hex](https://hex.pm/packages/gizoogle); the package can be installed as:

  1. Add gizoogle to your list of dependencies in `mix.exs`:

        def deps do
          [{:gizoogle, "~> 0.0.1"}]
        end

  2. Ensure gizoogle is started before your application:

        def application do
          [applications: [:gizoogle]]
        end

## Usage

```elixir
iex> Gizoogle.translate("My friends call me Richard because they know I make lots of money")
"My fuckin playaz call me Slick Rick cuz they know I make fuckin shitloadz of scrilla"
```
