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

defmodule GoogleApi.Content.V21.Model.ProductsCustomBatchRequestEntry do
  @moduledoc """
  A batch entry encoding a single non-batch products request.

  ## Attributes

  *   `batchId` (*type:* `integer()`, *default:* `nil`) - An entry ID, unique within the batch request.
  *   `feedId` (*type:* `String.t`, *default:* `nil`) - The Content API feed id.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The ID of the managing account.
  *   `method` (*type:* `String.t`, *default:* `nil`) - The method of the batch entry. Acceptable values are: - "`delete`" - "`get`" - "`insert`" - "`update`" 
  *   `product` (*type:* `GoogleApi.Content.V21.Model.Product.t`, *default:* `nil`) - The product to insert. Only required if the method is `insert`.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the product to get or delete. Only defined if the method is `get` or `delete`.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - The list of product attributes to be updated. Attributes specified in the update mask without a value specified in the body will be deleted from the product. Only top-level product attributes can be updated. If not defined, product attributes with set values will be updated and other attributes will stay unchanged. Only defined if the method is `update`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => integer() | nil,
          :feedId => String.t() | nil,
          :merchantId => String.t() | nil,
          :method => String.t() | nil,
          :product => GoogleApi.Content.V21.Model.Product.t() | nil,
          :productId => String.t() | nil,
          :updateMask => String.t() | nil
        }

  field(:batchId)
  field(:feedId)
  field(:merchantId)
  field(:method)
  field(:product, as: GoogleApi.Content.V21.Model.Product)
  field(:productId)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ProductsCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ProductsCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ProductsCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
