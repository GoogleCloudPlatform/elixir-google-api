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

defmodule GoogleApi.YouTube.V3.Model.ChannelBrandingSettings do
  @moduledoc """
  Branding properties of a YouTube channel.

  ## Attributes

  - channel (ChannelSettings): Branding properties for the channel view. Defaults to: `null`.
  - hints ([PropertyValue]): Additional experimental branding properties. Defaults to: `null`.
  - image (ImageSettings): Branding properties for branding images. Defaults to: `null`.
  - watch (WatchSettings): Branding properties for the watch page. Defaults to: `null`.
  """

  defstruct [
    :channel,
    :hints,
    :image,
    :watch
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ChannelBrandingSettings do
  import GoogleApi.YouTube.V3.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:channel, :struct, GoogleApi.YouTube.V3.Model.ChannelSettings, options)
    |> deserialize(:hints, :list, GoogleApi.YouTube.V3.Model.PropertyValue, options)
    |> deserialize(:image, :struct, GoogleApi.YouTube.V3.Model.ImageSettings, options)
    |> deserialize(:watch, :struct, GoogleApi.YouTube.V3.Model.WatchSettings, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ChannelBrandingSettings do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end
