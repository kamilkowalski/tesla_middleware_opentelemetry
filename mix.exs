defmodule TeslaMiddlewareOpentelemetry.MixProject do
  use Mix.Project

  def project do
    [
      app: :tesla_middleware_opentelemetry,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:tesla, "~> 1.4"},
      {:opentelemetry_api, "~> 1.0.0-rc.2"}
    ]
  end
end
