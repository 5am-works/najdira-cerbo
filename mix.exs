defmodule NajdiraCerbo.MixProject do
  use Mix.Project

  def project do
    [
      app: :najdira_cerbo,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {NajdiraCerbo.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:ecto, "~> 3.1"},
      {:ecto_sql, "~> 3.1"},
      {:postgrex, "~> 0.14.3"},
    ]
  end
end
