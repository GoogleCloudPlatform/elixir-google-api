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

defmodule GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest do
  @moduledoc """
  Request message for Import methods.

  ## Attributes

  *   `errorsConfig` (*type:* `GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig.t`, *default:* `nil`) - Optional. The desired location of errors incurred during the Import.
  *   `inputConfig` (*type:* `GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1InputConfig.t`, *default:* `nil`) - Required. The desired input location of the data.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Optional. Unique identifier provided by client, within the ancestor dataset scope. Ensures idempotency and used for request deduplication. Server-generated if unspecified. Up to 128 characters long. This is returned as google.longrunning.Operation.name in the response.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - Optional. Indicates which fields in the provided imported 'items' to update. If not set, will by default update all fields.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorsConfig =>
            GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig.t()
            | nil,
          :inputConfig =>
            GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1InputConfig.t()
            | nil,
          :requestId => String.t() | nil,
          :updateMask => String.t() | nil
        }

  field(:errorsConfig,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig
  )

  field(:inputConfig,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1InputConfig
  )

  field(:requestId)
  field(:updateMask)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest do
  def decode(value, options) do
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
