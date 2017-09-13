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

defmodule GoogleApi.YouTube.V3.Model.Channel do
  @moduledoc """
  A channel resource contains information about a YouTube channel.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"auditDetails",
    :"brandingSettings",
    :"contentDetails",
    :"contentOwnerDetails",
    :"conversionPings",
    :"etag",
    :"id",
    :"invideoPromotion",
    :"kind",
    :"localizations",
    :"snippet",
    :"statistics",
    :"status",
    :"topicDetails"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.Channel do
  import GoogleApi.YouTube.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"auditDetails", :struct, GoogleApi.YouTube.V3.Model.ChannelAuditDetails, options)
    |> deserialize(:"brandingSettings", :struct, GoogleApi.YouTube.V3.Model.ChannelBrandingSettings, options)
    |> deserialize(:"contentDetails", :struct, GoogleApi.YouTube.V3.Model.ChannelContentDetails, options)
    |> deserialize(:"contentOwnerDetails", :struct, GoogleApi.YouTube.V3.Model.ChannelContentOwnerDetails, options)
    |> deserialize(:"conversionPings", :struct, GoogleApi.YouTube.V3.Model.ChannelConversionPings, options)
    |> deserialize(:"invideoPromotion", :struct, GoogleApi.YouTube.V3.Model.InvideoPromotion, options)
    |> deserialize(:"localizations", :map, GoogleApi.YouTube.V3.Model.ChannelLocalization, options)
    |> deserialize(:"snippet", :struct, GoogleApi.YouTube.V3.Model.ChannelSnippet, options)
    |> deserialize(:"statistics", :struct, GoogleApi.YouTube.V3.Model.ChannelStatistics, options)
    |> deserialize(:"status", :struct, GoogleApi.YouTube.V3.Model.ChannelStatus, options)
    |> deserialize(:"topicDetails", :struct, GoogleApi.YouTube.V3.Model.ChannelTopicDetails, options)
  end
end

