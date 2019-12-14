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

defmodule GoogleApi.Content.V21.Model.AccountTaxTaxRule do
  @moduledoc """
  Tax calculation rule to apply in a state or province (USA only).

  ## Attributes

  *   `country` (*type:* `String.t`, *default:* `nil`) - Country code in which tax is applicable.
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - State (or province) is which the tax is applicable, described by its location ID (also called criteria ID).
  *   `ratePercent` (*type:* `String.t`, *default:* `nil`) - Explicit tax rate in percent, represented as a floating point number without the percentage character. Must not be negative.
  *   `shippingTaxed` (*type:* `boolean()`, *default:* `nil`) - If true, shipping charges are also taxed.
  *   `useGlobalRate` (*type:* `boolean()`, *default:* `nil`) - Whether the tax rate is taken from a global tax table or specified explicitly.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :country => String.t(),
          :locationId => String.t(),
          :ratePercent => String.t(),
          :shippingTaxed => boolean(),
          :useGlobalRate => boolean()
        }

  field(:country)
  field(:locationId)
  field(:ratePercent)
  field(:shippingTaxed)
  field(:useGlobalRate)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountTaxTaxRule do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountTaxTaxRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountTaxTaxRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
