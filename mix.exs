Code.ensure_loaded?(Hex) and Hex.start

defmodule Myproject.Mixfile do
  use Mix.Project

  def project do
    [
        app: :myproject,
        version: "0.0.1",
        elixir: "~> 1.1.0-dev",
        escript: escript,
        deps: deps
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
        applications: [:logger],
        mod: { Myproject, [] }
    ]
  end

  def escript do
    [main_module: Myproject]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
        {:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.0"},
        {:httpotion, "~> 0.2.0"}
    ]
  end
end
