defmodule GoogleApi.AcceleratedMobilePageUrl.V1.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :google_api_accelerated_mobile_page_url,
     version: @version,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/accelerated_mobile_page_url"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:google_gax, "~> 0.1.0"},
      {:ex_doc, "~> 0.16", only: :dev}
    ]
  end

  defp description() do
    """
    Retrieves the list of AMP URLs (and equivalent AMP Cache URLs) for a given list of public URL(s).
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/accelerated_mobile_page_url",
        "Homepage" => "https://developers.google.com/amp/cache/"
      }
    ]
  end
end
