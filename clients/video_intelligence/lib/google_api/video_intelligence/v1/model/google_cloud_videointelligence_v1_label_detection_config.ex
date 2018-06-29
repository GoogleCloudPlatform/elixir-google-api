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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1LabelDetectionConfig do
  @moduledoc """
  Config for LABEL_DETECTION.

  ## Attributes

  - labelDetectionMode (String.t): What labels should be detected with LABEL_DETECTION, in addition to video-level labels or segment-level labels. If unspecified, defaults to &#x60;SHOT_MODE&#x60;. Defaults to: `null`.
    - Enum - one of [LABEL_DETECTION_MODE_UNSPECIFIED, SHOT_MODE, FRAME_MODE, SHOT_AND_FRAME_MODE]
  - model (String.t): Model to use for label detection. Supported values: \&quot;builtin/stable\&quot; (the default if unset) and \&quot;builtin/latest\&quot;. Defaults to: `null`.
  - stationaryCamera (boolean()): Whether the video has been shot from a stationary (i.e. non-moving) camera. When set to true, might improve detection accuracy for moving objects. Should be used with &#x60;SHOT_AND_FRAME_MODE&#x60; enabled. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labelDetectionMode => any(),
          :model => any(),
          :stationaryCamera => any()
        }

  field(:labelDetectionMode)
  field(:model)
  field(:stationaryCamera)
end

defimpl Poison.Decoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1LabelDetectionConfig do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1LabelDetectionConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1LabelDetectionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
