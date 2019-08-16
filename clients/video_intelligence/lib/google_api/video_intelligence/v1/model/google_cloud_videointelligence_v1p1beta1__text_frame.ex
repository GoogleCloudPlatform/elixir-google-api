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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_TextFrame do
  @moduledoc """
  Video frame level annotation results for text annotation (OCR).
  Contains information regarding timestamp and bounding box locations for the
  frames containing detected OCR text snippets.

  ## Attributes

  *   `rotatedBoundingBox` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly.t`, *default:* `nil`) - Bounding polygon of the detected text for this frame.
  *   `timeOffset` (*type:* `String.t`, *default:* `nil`) - Timestamp of this frame.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rotatedBoundingBox =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly.t(),
          :timeOffset => String.t()
        }

  field(
    :rotatedBoundingBox,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
  )

  field(:timeOffset)
end

defimpl Poison.Decoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_TextFrame do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_TextFrame.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_TextFrame do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
