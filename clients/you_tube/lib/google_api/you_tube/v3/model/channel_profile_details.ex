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

defmodule GoogleApi.YouTube.V3.Model.ChannelProfileDetails do
  @moduledoc """


  ## Attributes

  - channelId (String.t): The YouTube channel ID. Defaults to `nil`.
  - channelUrl (String.t): The channel's URL. Defaults to `nil`.
  - displayName (String.t): The channel's display name. Defaults to `nil`.
  - profileImageUrl (String.t): The channels's avatar URL. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channelId => String.t(),
          :channelUrl => String.t(),
          :displayName => String.t(),
          :profileImageUrl => String.t()
        }

  field(:channelId)
  field(:channelUrl)
  field(:displayName)
  field(:profileImageUrl)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ChannelProfileDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.ChannelProfileDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ChannelProfileDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
