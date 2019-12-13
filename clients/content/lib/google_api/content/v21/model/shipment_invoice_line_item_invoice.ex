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

defmodule GoogleApi.Content.V21.Model.ShipmentInvoiceLineItemInvoice do
  @moduledoc """


  ## Attributes

  *   `lineItemId` (*type:* `String.t`, *default:* `nil`) - ID of the line item. Either lineItemId or productId must be set.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - ID of the product. This is the REST ID used in the products service. Either lineItemId or productId must be set.
  *   `shipmentUnitIds` (*type:* `list(String.t)`, *default:* `nil`) - [required] The shipment unit ID is assigned by the merchant and defines individual quantities within a line item. The same ID can be assigned to units that are the same while units that differ must be assigned a different ID (for example: free or promotional units).
  *   `unitInvoice` (*type:* `GoogleApi.Content.V21.Model.UnitInvoice.t`, *default:* `nil`) - [required] Invoice details for a single unit.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lineItemId => String.t(),
          :productId => String.t(),
          :shipmentUnitIds => list(String.t()),
          :unitInvoice => GoogleApi.Content.V21.Model.UnitInvoice.t()
        }

  field(:lineItemId)
  field(:productId)
  field(:shipmentUnitIds, type: :list)
  field(:unitInvoice, as: GoogleApi.Content.V21.Model.UnitInvoice)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ShipmentInvoiceLineItemInvoice do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ShipmentInvoiceLineItemInvoice.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ShipmentInvoiceLineItemInvoice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
