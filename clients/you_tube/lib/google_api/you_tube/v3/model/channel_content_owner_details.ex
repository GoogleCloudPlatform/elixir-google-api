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

defmodule GoogleApi.YouTube.V3.Model.ChannelContentOwnerDetails do
  @moduledoc """
  The contentOwnerDetails object encapsulates channel data that is relevant for YouTube Partners linked with the channel.

  ## Attributes

  - contentOwner (String.t): The ID of the content owner linked to the channel. Defaults to: `null`.
  - timeLinked (DateTime.t): The date and time of when the channel was linked to the content owner. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. Defaults to: `null`.
  """

  defstruct [
    :"contentOwner",
    :"timeLinked"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ChannelContentOwnerDetails do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ChannelContentOwnerDetails do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end

