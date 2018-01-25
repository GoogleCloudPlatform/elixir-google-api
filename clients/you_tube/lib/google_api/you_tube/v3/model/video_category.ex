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

defmodule GoogleApi.YouTube.V3.Model.VideoCategory do
  @moduledoc """
  A videoCategory resource identifies a category that has been or could be associated with uploaded videos.

  ## Attributes

  - etag (String.t): Etag of this resource. Defaults to: `null`.
  - id (String.t): The ID that YouTube uses to uniquely identify the video category. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;youtube#videoCategory\&quot;. Defaults to: `null`.
  - snippet (VideoCategorySnippet): The snippet object contains basic details about the video category, including its title. Defaults to: `null`.
  """

  defstruct [
    :"etag",
    :"id",
    :"kind",
    :"snippet"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoCategory do
  import GoogleApi.YouTube.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"snippet", :struct, GoogleApi.YouTube.V3.Model.VideoCategorySnippet, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoCategory do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end

