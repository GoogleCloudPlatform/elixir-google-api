# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse do
  @moduledoc """
  Response message for PrivateCatalog.SearchCatalogs.

  ## Attributes

  *   `catalogs` (*type:* `list(GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1Catalog.t)`, *default:* `nil`) - The `Catalog`s computed from the resource context.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A pagination token returned from a previous call to SearchCatalogs that
      indicates from where listing should continue.
      This field is optional.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :catalogs =>
            list(
              GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1Catalog.t()
            ),
          :nextPageToken => String.t()
        }

  field(:catalogs,
    as: GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1Catalog,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse do
  def decode(value, options) do
    GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
