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

defmodule GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1ListRecommendationsResponse do
  @moduledoc """
  Response to the `ListRecommendations` method.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token that can be used to request the next page of results. This field is empty if there are no additional results.
  *   `recommendations` (*type:* `list(GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Recommendation.t)`, *default:* `nil`) - The set of recommendations for the `parent` resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :recommendations =>
            list(
              GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Recommendation.t()
            )
        }

  field(:nextPageToken)

  field(:recommendations,
    as: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Recommendation,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1ListRecommendationsResponse do
  def decode(value, options) do
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1ListRecommendationsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1ListRecommendationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
