defmodule GoogleApi.Translate.V2.Mixfile do
  use Mix.Project

  @version "0.0.4"

  def project() do
    [
      app: :google_api_translate,
      version: @version,
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/translate"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:tesla, "~> 0.5"},
      {:poison, ">= 1.0.0"},
      {:ex_doc, "~> 0.16", only: :dev},
      {:goth, "~> 0.4.0", only: [:dev, :test]}
    ]
  end

  defp description() do
    """
    The Google Cloud Translation API lets websites and programs integrate with
    Google Translate programmatically.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/translate",
        "Homepage" => "https://cloud.google.com/translate/"
      }
    ]
  end
end
