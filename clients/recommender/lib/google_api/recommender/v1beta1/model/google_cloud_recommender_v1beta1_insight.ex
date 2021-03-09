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

defmodule GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Insight do
  @moduledoc """
  An insight along with the information used to derive the insight. The insight may have associated recomendations as well.

  ## Attributes

  *   `associatedRecommendations` (*type:* `list(GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1InsightRecommendationReference.t)`, *default:* `nil`) - Recommendations derived from this insight.
  *   `category` (*type:* `String.t`, *default:* `nil`) - Category being targeted by the insight.
  *   `content` (*type:* `map()`, *default:* `nil`) - A struct of custom fields to explain the insight. Example: "grantedPermissionsCount": "1000"
  *   `description` (*type:* `String.t`, *default:* `nil`) - Free-form human readable summary in English. The maximum length is 500 characters.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Fingerprint of the Insight. Provides optimistic locking when updating states.
  *   `insightSubtype` (*type:* `String.t`, *default:* `nil`) - Insight subtype. Insight content schema will be stable for a given subtype.
  *   `lastRefreshTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp of the latest data used to generate the insight.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the insight.
  *   `observationPeriod` (*type:* `String.t`, *default:* `nil`) - Observation period that led to the insight. The source data used to generate the insight ends at last_refresh_time and begins at (last_refresh_time - observation_period).
  *   `stateInfo` (*type:* `GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1InsightStateInfo.t`, *default:* `nil`) - Information state and metadata.
  *   `targetResources` (*type:* `list(String.t)`, *default:* `nil`) - Fully qualified resource names that this insight is targeting.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :associatedRecommendations =>
            list(
              GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1InsightRecommendationReference.t()
            )
            | nil,
          :category => String.t() | nil,
          :content => map() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :insightSubtype => String.t() | nil,
          :lastRefreshTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :observationPeriod => String.t() | nil,
          :stateInfo =>
            GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1InsightStateInfo.t()
            | nil,
          :targetResources => list(String.t()) | nil
        }

  field(:associatedRecommendations,
    as:
      GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1InsightRecommendationReference,
    type: :list
  )

  field(:category)
  field(:content, type: :map)
  field(:description)
  field(:etag)
  field(:insightSubtype)
  field(:lastRefreshTime, as: DateTime)
  field(:name)
  field(:observationPeriod)

  field(:stateInfo,
    as: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1InsightStateInfo
  )

  field(:targetResources, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Insight do
  def decode(value, options) do
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Insight.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Insight do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
