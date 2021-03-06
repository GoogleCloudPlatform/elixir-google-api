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

defmodule GoogleApi.Content.V2.Model.OrderinvoicesCreateRefundInvoiceRequest do
  @moduledoc """


  ## Attributes

  *   `invoiceId` (*type:* `String.t`, *default:* `nil`) - [required] The ID of the invoice.
  *   `operationId` (*type:* `String.t`, *default:* `nil`) - [required] The ID of the operation, unique across all operations for a given order.
  *   `refundOnlyOption` (*type:* `GoogleApi.Content.V2.Model.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption.t`, *default:* `nil`) - Option to create a refund-only invoice. Exactly one of `refundOnlyOption` or `returnOption` must be provided.
  *   `returnOption` (*type:* `GoogleApi.Content.V2.Model.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption.t`, *default:* `nil`) - Option to create an invoice for a refund and mark all items within the invoice as returned. Exactly one of `refundOnlyOption` or `returnOption` must be provided.
  *   `shipmentInvoices` (*type:* `list(GoogleApi.Content.V2.Model.ShipmentInvoice.t)`, *default:* `nil`) - Invoice details for different shipment groups.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :invoiceId => String.t() | nil,
          :operationId => String.t() | nil,
          :refundOnlyOption =>
            GoogleApi.Content.V2.Model.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption.t()
            | nil,
          :returnOption =>
            GoogleApi.Content.V2.Model.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption.t()
            | nil,
          :shipmentInvoices => list(GoogleApi.Content.V2.Model.ShipmentInvoice.t()) | nil
        }

  field(:invoiceId)
  field(:operationId)

  field(:refundOnlyOption,
    as:
      GoogleApi.Content.V2.Model.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
  )

  field(:returnOption,
    as:
      GoogleApi.Content.V2.Model.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
  )

  field(:shipmentInvoices, as: GoogleApi.Content.V2.Model.ShipmentInvoice, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderinvoicesCreateRefundInvoiceRequest do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderinvoicesCreateRefundInvoiceRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderinvoicesCreateRefundInvoiceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
