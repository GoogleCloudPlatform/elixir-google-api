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

defmodule GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1InlineSource do
  @moduledoc """
  Inline source used for taxonomies import.

  ## Attributes

  *   `taxonomies` (*type:* `list(GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SerializedTaxonomy.t)`, *default:* `nil`) - Required. Taxonomies to be imported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :taxonomies =>
            list(
              GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SerializedTaxonomy.t()
            )
            | nil
        }

  field(:taxonomies,
    as: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SerializedTaxonomy,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1InlineSource do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1InlineSource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1InlineSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
