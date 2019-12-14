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

defmodule GoogleApi.Content.V21.Model.AccountsCustomBatchResponse do
  @moduledoc """


  ## Attributes

  *   `entries` (*type:* `list(GoogleApi.Content.V21.Model.AccountsCustomBatchResponseEntry.t)`, *default:* `nil`) - The result of the execution of the batch requests.
  *   `kind` (*type:* `String.t`, *default:* `content#accountsCustomBatchResponse`) - Identifies what kind of resource this is. Value: the fixed string "content#accountsCustomBatchResponse".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entries => list(GoogleApi.Content.V21.Model.AccountsCustomBatchResponseEntry.t()),
          :kind => String.t()
        }

  field(:entries, as: GoogleApi.Content.V21.Model.AccountsCustomBatchResponseEntry, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountsCustomBatchResponse do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountsCustomBatchResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountsCustomBatchResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
