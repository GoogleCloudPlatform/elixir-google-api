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

defmodule GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse do
  @moduledoc """
  Response for ListCatalogs method.

  ## Attributes

  *   `catalogs` (*type:* `list(GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1Catalog.t)`, *default:* `nil`) - Output only. All the customer's catalogs.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Pagination token, if not returned indicates the last page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :catalogs =>
            list(
              GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1Catalog.t()
            )
            | nil,
          :nextPageToken => String.t() | nil
        }

  field(:catalogs,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1Catalog,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse do
  def decode(value, options) do
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
