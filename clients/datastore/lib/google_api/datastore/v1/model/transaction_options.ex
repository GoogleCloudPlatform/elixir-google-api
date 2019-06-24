# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Datastore.V1.Model.TransactionOptions do
  @moduledoc """
  Options for beginning a new transaction.

  Transactions can be created explicitly with calls to
  Datastore.BeginTransaction or implicitly by setting
  ReadOptions.new_transaction in read requests.

  ## Attributes

  *   `readOnly` (*type:* `GoogleApi.Datastore.V1.Model.ReadOnly.t`, *default:* `nil`) - The transaction should only allow reads.
  *   `readWrite` (*type:* `GoogleApi.Datastore.V1.Model.ReadWrite.t`, *default:* `nil`) - The transaction should allow both reads and writes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :readOnly => GoogleApi.Datastore.V1.Model.ReadOnly.t(),
          :readWrite => GoogleApi.Datastore.V1.Model.ReadWrite.t()
        }

  field(:readOnly, as: GoogleApi.Datastore.V1.Model.ReadOnly)
  field(:readWrite, as: GoogleApi.Datastore.V1.Model.ReadWrite)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.TransactionOptions do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.TransactionOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.TransactionOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
