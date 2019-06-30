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

defmodule GoogleApi.DFAReporting.V33.Model.MobileCarrier do
  @moduledoc """
  Contains information about a mobile carrier that can be targeted by ads.

  ## Attributes

  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - Country code of the country to which this mobile carrier belongs.
  *   `countryDartId` (*type:* `String.t`, *default:* `nil`) - DART ID of the country to which this mobile carrier belongs.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this mobile carrier.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#mobileCarrier`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#mobileCarrier".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this mobile carrier.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countryCode => String.t(),
          :countryDartId => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t()
        }

  field(:countryCode)
  field(:countryDartId)
  field(:id)
  field(:kind)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.MobileCarrier do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.MobileCarrier.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.MobileCarrier do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
