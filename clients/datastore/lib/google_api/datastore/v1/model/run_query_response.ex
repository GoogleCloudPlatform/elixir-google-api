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

defmodule GoogleApi.Datastore.V1.Model.RunQueryResponse do
  @moduledoc """
  The response for Datastore.RunQuery.

  ## Attributes

  *   `batch` (*type:* `GoogleApi.Datastore.V1.Model.QueryResultBatch.t`, *default:* `nil`) - A batch of query results (always present).
  *   `query` (*type:* `GoogleApi.Datastore.V1.Model.Query.t`, *default:* `nil`) - The parsed form of the `GqlQuery` from the request, if it was set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batch => GoogleApi.Datastore.V1.Model.QueryResultBatch.t(),
          :query => GoogleApi.Datastore.V1.Model.Query.t()
        }

  field(:batch, as: GoogleApi.Datastore.V1.Model.QueryResultBatch)
  field(:query, as: GoogleApi.Datastore.V1.Model.Query)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.RunQueryResponse do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.RunQueryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.RunQueryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
