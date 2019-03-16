# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame do
  @moduledoc """
  Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.

  ## Attributes

  - normalizedBoundingBox (GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox): The normalized bounding box location of this object track for the frame. Defaults to: `null`.
  - timeOffset (String.t): The timestamp of the frame in microseconds. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :normalizedBoundingBox =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox.t(),
          :timeOffset => any()
        }

  field(
    :normalizedBoundingBox,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox
  )

  field(:timeOffset)
end

defimpl Poison.Decoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
