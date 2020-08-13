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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_VideoSegment do
  @moduledoc """
  Video segment.

  ## Attributes

  *   `endTimeOffset` (*type:* `String.t`, *default:* `nil`) - Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inclusive).
  *   `startTimeOffset` (*type:* `String.t`, *default:* `nil`) - Time-offset, relative to the beginning of the video, corresponding to the start of the segment (inclusive).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTimeOffset => String.t(),
          :startTimeOffset => String.t()
        }

  field(:endTimeOffset)
  field(:startTimeOffset)
end

defimpl Poison.Decoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_VideoSegment do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_VideoSegment.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_VideoSegment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
