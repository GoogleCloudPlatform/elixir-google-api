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

defmodule GoogleApi.BigQuery.V2.Model.TableListTables do
  @moduledoc """


  ## Attributes

  - clustering (Clustering): [Beta] Clustering specification for this table, if configured. Defaults to: `null`.
  - creationTime (String.t): The time when this table was created, in milliseconds since the epoch. Defaults to: `null`.
  - expirationTime (String.t): [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. Defaults to: `null`.
  - friendlyName (String.t): The user-friendly name for this table. Defaults to: `null`.
  - id (String.t): An opaque ID of the table Defaults to: `null`.
  - kind (String.t): The resource type. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): The labels associated with this table. You can use these to organize and group your tables. Defaults to: `null`.
  - tableReference (TableReference): A reference uniquely identifying the table. Defaults to: `null`.
  - timePartitioning (TimePartitioning): The time-based partitioning specification for this table, if configured. Defaults to: `null`.
  - type (String.t): The type of table. Possible values are: TABLE, VIEW. Defaults to: `null`.
  - view (TableListView):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clustering => GoogleApi.BigQuery.V2.Model.Clustering.t(),
          :creationTime => any(),
          :expirationTime => any(),
          :friendlyName => any(),
          :id => any(),
          :kind => any(),
          :labels => map(),
          :tableReference => GoogleApi.BigQuery.V2.Model.TableReference.t(),
          :timePartitioning => GoogleApi.BigQuery.V2.Model.TimePartitioning.t(),
          :type => any(),
          :view => GoogleApi.BigQuery.V2.Model.TableListView.t()
        }

  field(:clustering, as: GoogleApi.BigQuery.V2.Model.Clustering)
  field(:creationTime)
  field(:expirationTime)
  field(:friendlyName)
  field(:id)
  field(:kind)
  field(:labels, type: :map)
  field(:tableReference, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:timePartitioning, as: GoogleApi.BigQuery.V2.Model.TimePartitioning)
  field(:type)
  field(:view, as: GoogleApi.BigQuery.V2.Model.TableListView)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableListTables do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TableListTables.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableListTables do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
