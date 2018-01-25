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

defmodule GoogleApi.YouTube.V3.Model.VideoAbuseReport do
  @moduledoc """
  

  ## Attributes

  - comments (String.t): Additional comments regarding the abuse report. Defaults to: `null`.
  - language (String.t): The language that the content was viewed in. Defaults to: `null`.
  - reasonId (String.t): The high-level, or primary, reason that the content is abusive. The value is an abuse report reason ID. Defaults to: `null`.
  - secondaryReasonId (String.t): The specific, or secondary, reason that this content is abusive (if available). The value is an abuse report reason ID that is a valid secondary reason for the primary reason. Defaults to: `null`.
  - videoId (String.t): The ID that YouTube uses to uniquely identify the video. Defaults to: `null`.
  """

  defstruct [
    :"comments",
    :"language",
    :"reasonId",
    :"secondaryReasonId",
    :"videoId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoAbuseReport do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoAbuseReport do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end

