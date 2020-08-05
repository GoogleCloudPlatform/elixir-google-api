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

defmodule GoogleApi.YouTube.V3.Model.PlaylistItemContentDetails do
  @moduledoc """


  ## Attributes

  *   `endAt` (*type:* `String.t`, *default:* `nil`) - The time, measured in seconds from the start of the video, when the video should stop playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) By default, assume that the video.endTime is the end of the video.
  *   `note` (*type:* `String.t`, *default:* `nil`) - A user-generated note for this item.
  *   `startAt` (*type:* `String.t`, *default:* `nil`) - The time, measured in seconds from the start of the video, when the video should start playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) The default value is 0.
  *   `videoId` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube uses to uniquely identify a video. To retrieve the video resource, set the id query parameter to this value in your API request.
  *   `videoPublishedAt` (*type:* `String.t`, *default:* `nil`) - The date and time that the video was published to YouTube. The value is specified in ISO 8601 format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endAt => String.t(),
          :note => String.t(),
          :startAt => String.t(),
          :videoId => String.t(),
          :videoPublishedAt => String.t()
        }

  field(:endAt)
  field(:note)
  field(:startAt)
  field(:videoId)
  field(:videoPublishedAt)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.PlaylistItemContentDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.PlaylistItemContentDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.PlaylistItemContentDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
