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

defmodule GoogleApi.YouTube.V3.Model.ChannelSnippet do
  @moduledoc """
  Basic details about a channel, including title, description and thumbnails. Next available id: 15.

  ## Attributes

  - country (String.t): The country of the channel. Defaults to: `null`.
  - customUrl (String.t): The custom url of the channel. Defaults to: `null`.
  - defaultLanguage (String.t): The language of the channel&#39;s default title and description. Defaults to: `null`.
  - description (String.t): The description of the channel. Defaults to: `null`.
  - localized (ChannelLocalization): Localized title and description, read-only. Defaults to: `null`.
  - publishedAt (DateTime.t): The date and time that the channel was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. Defaults to: `null`.
  - thumbnails (ThumbnailDetails): A map of thumbnail images associated with the channel. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. Defaults to: `null`.
  - title (String.t): The channel&#39;s title. Defaults to: `null`.
  """

  defstruct [
    :"country",
    :"customUrl",
    :"defaultLanguage",
    :"description",
    :"localized",
    :"publishedAt",
    :"thumbnails",
    :"title"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ChannelSnippet do
  import GoogleApi.YouTube.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"localized", :struct, GoogleApi.YouTube.V3.Model.ChannelLocalization, options)
    |> deserialize(:"thumbnails", :struct, GoogleApi.YouTube.V3.Model.ThumbnailDetails, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ChannelSnippet do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end

