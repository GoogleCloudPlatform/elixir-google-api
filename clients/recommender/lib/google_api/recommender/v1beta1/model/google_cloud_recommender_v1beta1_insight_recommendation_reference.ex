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

defmodule GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1InsightRecommendationReference do
  @moduledoc """
  Reference to an associated recommendation.

  ## Attributes

  *   `recommendation` (*type:* `String.t`, *default:* `nil`) - Recommendation resource name, e.g. projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/recommendations/[RECOMMENDATION_ID]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :recommendation => String.t() | nil
        }

  field(:recommendation)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1InsightRecommendationReference do
  def decode(value, options) do
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1InsightRecommendationReference.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1InsightRecommendationReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
