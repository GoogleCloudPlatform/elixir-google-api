# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Spanner.V1.Model.CommitRequest do
  @moduledoc """
  The request for Commit.

  ## Attributes

  - mutations ([Mutation]): The mutations to be executed when this transaction commits. All mutations are applied atomically, in the order they appear in this list. Defaults to: `null`.
  - singleUseTransaction (TransactionOptions): Execute mutations in a temporary transaction. Note that unlike commit of a previously-started transaction, commit with a temporary transaction is non-idempotent. That is, if the &#x60;CommitRequest&#x60; is sent to Cloud Spanner more than once (for instance, due to retries in the application, or in the transport library), it is possible that the mutations are executed more than once. If this is undesirable, use BeginTransaction and Commit instead. Defaults to: `null`.
  - transactionId (binary()): Commit a previously-started transaction. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mutations => list(GoogleApi.Spanner.V1.Model.Mutation.t()),
          :singleUseTransaction => GoogleApi.Spanner.V1.Model.TransactionOptions.t(),
          :transactionId => any()
        }

  field(:mutations, as: GoogleApi.Spanner.V1.Model.Mutation, type: :list)
  field(:singleUseTransaction, as: GoogleApi.Spanner.V1.Model.TransactionOptions)
  field(:transactionId)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.CommitRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.CommitRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.CommitRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
