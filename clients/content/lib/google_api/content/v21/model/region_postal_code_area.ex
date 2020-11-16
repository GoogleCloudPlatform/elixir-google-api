# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Content.V21.Model.RegionPostalCodeArea do
  @moduledoc """
  A list of postal codes that defines the region area. Note: All regions defined using postal codes are accessible via the account's `ShippingSettings.postalCodeGroups` resource.

  ## Attributes

  *   `postalCodes` (*type:* `list(GoogleApi.Content.V21.Model.RegionPostalCodeAreaPostalCodeRange.t)`, *default:* `nil`) - Required. A range of postal codes.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - Required. CLDR territory code or the country the postal code group applies to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :postalCodes =>
            list(GoogleApi.Content.V21.Model.RegionPostalCodeAreaPostalCodeRange.t()),
          :regionCode => String.t()
        }

  field(:postalCodes,
    as: GoogleApi.Content.V21.Model.RegionPostalCodeAreaPostalCodeRange,
    type: :list
  )

  field(:regionCode)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.RegionPostalCodeArea do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.RegionPostalCodeArea.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.RegionPostalCodeArea do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
