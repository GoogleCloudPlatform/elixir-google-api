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

defmodule GoogleApi.Content.V21.Model.ProductstatusesCustomBatchRequestEntry do
  @moduledoc """
  A batch entry encoding a single non-batch productstatuses request.

  ## Attributes

  *   `batchId` (*type:* `integer()`, *default:* `nil`) - An entry ID, unique within the batch request.
  *   `destinations` (*type:* `list(String.t)`, *default:* `nil`) - If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.
  *   `includeAttributes` (*type:* `boolean()`, *default:* `nil`) - 
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The ID of the managing account.
  *   `method` (*type:* `String.t`, *default:* `nil`) - The method of the batch entry.

      Acceptable values are:  
      - "`get`"
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the product whose status to get.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => integer(),
          :destinations => list(String.t()),
          :includeAttributes => boolean(),
          :merchantId => String.t(),
          :method => String.t(),
          :productId => String.t()
        }

  field(:batchId)
  field(:destinations, type: :list)
  field(:includeAttributes)
  field(:merchantId)
  field(:method)
  field(:productId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ProductstatusesCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ProductstatusesCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ProductstatusesCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
