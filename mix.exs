defmodule Gizoogle.Mixfile do
  use Mix.Project

  def project do
    [app: :gizoogle,
     version: "0.0.3",
     elixir: "~> 1.5",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "Uses Gizoogle ta allow you ta drop a rhyme like a thug n' retrieve links fo' translated sitez",
     package: package(),
     deps: deps(),
     docs: [extras: ["README.md"]]]
  end

  def application do
    [applications: [:httpoison]]
  end

  defp deps do
    [
      {:httpoison, "~> 0.13"},
      {:earmark, ">= 0.0.0", only: :dev},
      {:ex_doc,  ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [files: ["lib", "config", "mix.exs", "README*"],
     maintainers: ["Devin Clark"],
     licenses: ["MIT"],
     links: %{"GitHub"   => "https://github.com/notdevinclark/gizoogle",
              "Docs"     => "https://hexdocs.pm/gizoogle/readme.html",
              "Gizoogle" => "http://www.gizoogle.net/textilizer.php"}]
  end
end
