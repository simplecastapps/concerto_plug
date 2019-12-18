defmodule Concerto.Plug.Mixfile do
  use Mix.Project

  def project do
    [
      app: :concerto_plug,
      description: "Plug integration for Concerto",
      version: "0.1.3",
      elixir: "~> 1.2",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:logger]
    ]
  end

  defp deps do
    [
      {:concerto, github: "simplecastapps/concerto"},
      {:plug, ">= 0.0.0"},
      {:mazurka, github: "simplecastapps/mazurka", only: [:dev, :test]},
      {:mazurka_plug, github: "simplecastapps/mazurka_plug", only: [:dev, :test]},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
