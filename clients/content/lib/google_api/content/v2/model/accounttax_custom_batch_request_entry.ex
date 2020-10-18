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

defmodule GoogleApi.Content.V2.Model.AccounttaxCustomBatchRequestEntry do
  @moduledoc """
  A batch entry encoding a single non-batch accounttax request.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - The ID of the account for which to get/update account tax settings.
  *   `accountTax` (*type:* `GoogleApi.Content.V2.Model.AccountTax.t`, *default:* `nil`) - The account tax settings to update. Only defined if the method is `update`.
  *   `batchId` (*type:* `integer()`, *default:* `nil`) - An entry ID, unique within the batch request.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The ID of the managing account.
  *   `method` (*type:* `String.t`, *default:* `nil`) - The method of the batch entry.

      Acceptable values are:  
      - "`get`" 
      - "`update`"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :accountTax => GoogleApi.Content.V2.Model.AccountTax.t(),
          :batchId => integer(),
          :merchantId => String.t(),
          :method => String.t()
        }

  field(:accountId)
  field(:accountTax, as: GoogleApi.Content.V2.Model.AccountTax)
  field(:batchId)
  field(:merchantId)
  field(:method)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.AccounttaxCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.AccounttaxCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.AccounttaxCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
