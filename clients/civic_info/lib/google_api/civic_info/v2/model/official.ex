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

defmodule GoogleApi.CivicInfo.V2.Model.Official do
  @moduledoc """
  Information about a person holding an elected office.

  ## Attributes

  *   `address` (*type:* `list(GoogleApi.CivicInfo.V2.Model.SimpleAddressType.t)`, *default:* `nil`) - Addresses at which to contact the official.
  *   `channels` (*type:* `list(GoogleApi.CivicInfo.V2.Model.Channel.t)`, *default:* `nil`) - A list of known (social) media channels for this official.
  *   `emails` (*type:* `list(String.t)`, *default:* `nil`) - The direct email addresses for the official.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The official's name.
  *   `party` (*type:* `String.t`, *default:* `nil`) - The full name of the party the official belongs to.
  *   `phones` (*type:* `list(String.t)`, *default:* `nil`) - The official's public contact phone numbers.
  *   `photoUrl` (*type:* `String.t`, *default:* `nil`) - A URL for a photo of the official.
  *   `urls` (*type:* `list(String.t)`, *default:* `nil`) - The official's public website URLs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => list(GoogleApi.CivicInfo.V2.Model.SimpleAddressType.t()),
          :channels => list(GoogleApi.CivicInfo.V2.Model.Channel.t()),
          :emails => list(String.t()),
          :name => String.t(),
          :party => String.t(),
          :phones => list(String.t()),
          :photoUrl => String.t(),
          :urls => list(String.t())
        }

  field(:address, as: GoogleApi.CivicInfo.V2.Model.SimpleAddressType, type: :list)
  field(:channels, as: GoogleApi.CivicInfo.V2.Model.Channel, type: :list)
  field(:emails, type: :list)
  field(:name)
  field(:party)
  field(:phones, type: :list)
  field(:photoUrl)
  field(:urls, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.Official do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.Official.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.Official do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
