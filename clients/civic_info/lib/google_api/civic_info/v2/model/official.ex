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

defmodule GoogleApi.CivicInfo.V2.Model.Official do
  @moduledoc """
  Information about a person holding an elected office.

  ## Attributes

  - address (List[SimpleAddressType]): Addresses at which to contact the official. Defaults to: `null`.
  - channels (List[Channel]): A list of known (social) media channels for this official. Defaults to: `null`.
  - emails (List[String]): The direct email addresses for the official. Defaults to: `null`.
  - name (String): The official&#39;s name. Defaults to: `null`.
  - party (String): The full name of the party the official belongs to. Defaults to: `null`.
  - phones (List[String]): The official&#39;s public contact phone numbers. Defaults to: `null`.
  - photoUrl (String): A URL for a photo of the official. Defaults to: `null`.
  - urls (List[String]): The official&#39;s public website URLs. Defaults to: `null`.
  """

  defstruct [
    :"address",
    :"channels",
    :"emails",
    :"name",
    :"party",
    :"phones",
    :"photoUrl",
    :"urls"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.Official do
  import GoogleApi.CivicInfo.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"address", :list, GoogleApi.CivicInfo.V2.Model.SimpleAddressType, options)
    |> deserialize(:"channels", :list, GoogleApi.CivicInfo.V2.Model.Channel, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.Official do
  def encode(value, options) do
    GoogleApi.CivicInfo.V2.Deserializer.serialize_non_nil(value, options)
  end
end

