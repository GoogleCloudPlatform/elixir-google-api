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

defmodule GoogleApi.SafeBrowsing.V4.Model.ThreatInfo do
  @moduledoc """
  The information regarding one or more threats that a client submits when checking for matches in threat lists.

  ## Attributes

  - platformTypes (List[String]): The platform types to be checked. Defaults to: `null`.
    - Enum - one of 
  - threatEntries (List[ThreatEntry]): The threat entries to be checked. Defaults to: `null`.
  - threatEntryTypes (List[String]): The entry types to be checked. Defaults to: `null`.
    - Enum - one of 
  - threatTypes (List[String]): The threat types to be checked. Defaults to: `null`.
    - Enum - one of 
  """

  defstruct [
    :"platformTypes",
    :"threatEntries",
    :"threatEntryTypes",
    :"threatTypes"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.SafeBrowsing.V4.Model.ThreatInfo do
  import GoogleApi.SafeBrowsing.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"threatEntries", :list, GoogleApi.SafeBrowsing.V4.Model.ThreatEntry, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SafeBrowsing.V4.Model.ThreatInfo do
  def encode(value, options) do
    GoogleApi.SafeBrowsing.V4.Deserializer.serialize_non_nil(value, options)
  end
end

