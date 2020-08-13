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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_LabelAnnotation do
  @moduledoc """
  Label annotation.

  ## Attributes

  *   `categoryEntities` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_Entity.t)`, *default:* `nil`) - Common categories for the detected entity. For example, when the label is `Terrier`, the category is likely `dog`. And in some cases there might be more than one categories e.g., `Terrier` could also be a `pet`.
  *   `entity` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_Entity.t`, *default:* `nil`) - Detected entity.
  *   `frames` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_LabelFrame.t)`, *default:* `nil`) - All video frames where a label was detected.
  *   `segments` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_LabelSegment.t)`, *default:* `nil`) - All video segments where a label was detected.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Feature version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :categoryEntities =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_Entity.t()
            ),
          :entity =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_Entity.t(),
          :frames =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_LabelFrame.t()
            ),
          :segments =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_LabelSegment.t()
            ),
          :version => String.t()
        }

  field(:categoryEntities,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_Entity,
    type: :list
  )

  field(:entity,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_Entity
  )

  field(:frames,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_LabelFrame,
    type: :list
  )

  field(:segments,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_LabelSegment,
    type: :list
  )

  field(:version)
end

defimpl Poison.Decoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_LabelAnnotation do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_LabelAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_LabelAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
