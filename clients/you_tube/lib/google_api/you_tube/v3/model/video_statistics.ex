# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.YouTube.V3.Model.VideoStatistics do
  @moduledoc """
  Statistics about the video, such as the number of times the video was viewed or liked.

  ## Attributes

  *   `commentCount` (*type:* `String.t`, *default:* `nil`) - The number of comments for the video.
  *   `dislikeCount` (*type:* `String.t`, *default:* `nil`) - The number of users who have indicated that they disliked the video by giving it a negative rating.
  *   `favoriteCount` (*type:* `String.t`, *default:* `nil`) - The number of users who currently have the video marked as a favorite video.
  *   `likeCount` (*type:* `String.t`, *default:* `nil`) - The number of users who have indicated that they liked the video by giving it a positive rating.
  *   `viewCount` (*type:* `String.t`, *default:* `nil`) - The number of times the video has been viewed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commentCount => String.t(),
          :dislikeCount => String.t(),
          :favoriteCount => String.t(),
          :likeCount => String.t(),
          :viewCount => String.t()
        }

  field(:commentCount)
  field(:dislikeCount)
  field(:favoriteCount)
  field(:likeCount)
  field(:viewCount)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoStatistics do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.VideoStatistics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoStatistics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
