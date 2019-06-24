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

defmodule GoogleApi.Dataproc.V1.Model.QueryList do
  @moduledoc """
  A list of queries to run on a cluster.

  ## Attributes

  *   `queries` (*type:* `list(String.t)`, *default:* `nil`) - Required. The queries to execute. You do not need to terminate a query with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of an Cloud Dataproc API snippet that uses a QueryList to specify a HiveJob:
      "hiveJob": {
        "queryList": {
          "queries": [
            "query1",
            "query2",
            "query3;query4",
          ]
        }
      }

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :queries => list(String.t())
        }

  field(:queries, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.QueryList do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.QueryList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.QueryList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
