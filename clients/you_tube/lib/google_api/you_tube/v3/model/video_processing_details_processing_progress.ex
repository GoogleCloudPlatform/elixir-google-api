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

defmodule GoogleApi.YouTube.V3.Model.VideoProcessingDetailsProcessingProgress do
  @moduledoc """
  Video processing progress and completion time estimate.

  ## Attributes

  *   `partsProcessed` (*type:* `String.t`, *default:* `nil`) - The number of parts of the video that YouTube has already processed. You can estimate the percentage of the video that YouTube has already processed by calculating: 100 * parts_processed / parts_total Note that since the estimated number of parts could increase without a corresponding increase in the number of parts that have already been processed, it is possible that the calculated progress could periodically decrease while YouTube processes a video.
  *   `partsTotal` (*type:* `String.t`, *default:* `nil`) - An estimate of the total number of parts that need to be processed for the video. The number may be updated with more precise estimates while YouTube processes the video.
  *   `timeLeftMs` (*type:* `String.t`, *default:* `nil`) - An estimate of the amount of time, in millseconds, that YouTube needs to finish processing the video.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :partsProcessed => String.t(),
          :partsTotal => String.t(),
          :timeLeftMs => String.t()
        }

  field(:partsProcessed)
  field(:partsTotal)
  field(:timeLeftMs)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoProcessingDetailsProcessingProgress do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.VideoProcessingDetailsProcessingProgress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoProcessingDetailsProcessingProgress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
