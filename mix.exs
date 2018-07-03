defmodule Haikunator.MixProject do
  use Mix.Project

  def project do
    [
      app: :haikunator,
      description: "Generate Heroku-like memorable random names to use in your apps or anywhere else.",
      version: "1.1.0",
      elixir: "~> 1.6",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: [
        maintainers: ["Kash Nouroozi"],
        licenses: ["MIT"],
        links: %{
          "GitHub" => "https://github.com/knrz/Haikunator"
        }
      ],
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:earmark, "~> 1.2", only: :dev},
      {:ex_doc, "~> 0.18.3", only: :dev},
      {:inch_ex, "~> 0.5.6", only: :docs},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
