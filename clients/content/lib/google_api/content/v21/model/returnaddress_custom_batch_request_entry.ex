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

defmodule GoogleApi.Content.V21.Model.ReturnaddressCustomBatchRequestEntry do
  @moduledoc """


  ## Attributes

  *   `batchId` (*type:* `integer()`, *default:* `nil`) - An entry ID, unique within the batch request.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The Merchant Center account ID.
  *   `method` (*type:* `String.t`, *default:* `nil`) - 
  *   `returnAddress` (*type:* `GoogleApi.Content.V21.Model.ReturnAddress.t`, *default:* `nil`) - The return address to submit. Set this only if the method is insert.
  *   `returnAddressId` (*type:* `String.t`, *default:* `nil`) - The return address ID. Set this only if the method is delete or get.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => integer(),
          :merchantId => String.t(),
          :method => String.t(),
          :returnAddress => GoogleApi.Content.V21.Model.ReturnAddress.t(),
          :returnAddressId => String.t()
        }

  field(:batchId)
  field(:merchantId)
  field(:method)
  field(:returnAddress, as: GoogleApi.Content.V21.Model.ReturnAddress)
  field(:returnAddressId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ReturnaddressCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ReturnaddressCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ReturnaddressCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
