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

defmodule GoogleApi.Content.V21.Model.AccountstatusesCustomBatchRequestEntry do
  @moduledoc """
  A batch entry encoding a single non-batch accountstatuses request.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - The ID of the (sub-)account whose status to get.
  *   `batchId` (*type:* `integer()`, *default:* `nil`) - An entry ID, unique within the batch request.
  *   `destinations` (*type:* `list(String.t)`, *default:* `nil`) - If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The ID of the managing account.
  *   `method` (*type:* `String.t`, *default:* `nil`) - The method (get).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :batchId => integer(),
          :destinations => list(String.t()),
          :merchantId => String.t(),
          :method => String.t()
        }

  field(:accountId)
  field(:batchId)
  field(:destinations, type: :list)
  field(:merchantId)
  field(:method)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountstatusesCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountstatusesCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountstatusesCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
