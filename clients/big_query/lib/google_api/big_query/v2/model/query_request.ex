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

defmodule GoogleApi.BigQuery.V2.Model.QueryRequest do
  @moduledoc """


  ## Attributes

  *   `connectionProperties` (*type:* `list(GoogleApi.BigQuery.V2.Model.ConnectionProperty.t)`, *default:* `nil`) - Connection properties.
  *   `createSession` (*type:* `boolean()`, *default:* `nil`) - If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs query in non-session mode.
  *   `defaultDataset` (*type:* `GoogleApi.BigQuery.V2.Model.DatasetReference.t`, *default:* `nil`) - [Optional] Specifies the default datasetId and projectId to assume for any unqualified table names in the query. If not set, all table names in the query string must be qualified in the format 'datasetId.tableId'.
  *   `dryRun` (*type:* `boolean()`, *default:* `nil`) - [Optional] If set to true, BigQuery doesn't run the job. Instead, if the query is valid, BigQuery returns statistics about the job such as how many bytes would be processed. If the query is invalid, an error returns. The default value is false.
  *   `kind` (*type:* `String.t`, *default:* `bigquery#queryRequest`) - The resource type of the request.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The geographic location where the job should run. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  *   `maxResults` (*type:* `integer()`, *default:* `nil`) - [Optional] The maximum number of rows of data to return per page of results. Setting this flag to a small value such as 1000 and then paging through results might improve reliability when the query result set is large. In addition to this limit, responses are also limited to 10 MB. By default, there is no maximum row count, and only the byte limit applies.
  *   `maximumBytesBilled` (*type:* `String.t`, *default:* `nil`) - [Optional] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge). If unspecified, this will be set to your project default.
  *   `parameterMode` (*type:* `String.t`, *default:* `nil`) - Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query.
  *   `preserveNulls` (*type:* `boolean()`, *default:* `nil`) - [Deprecated] This property is deprecated.
  *   `query` (*type:* `String.t`, *default:* `nil`) - [Required] A query string, following the BigQuery query syntax, of the query to execute. Example: "SELECT count(f1) FROM [myProjectId:myDatasetId.myTableId]".
  *   `queryParameters` (*type:* `list(GoogleApi.BigQuery.V2.Model.QueryParameter.t)`, *default:* `nil`) - Query parameters for Standard SQL queries.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - A unique user provided identifier to ensure idempotent behavior for queries. Note that this is different from the job_id. It has the following properties: 1. It is case-sensitive, limited to up to 36 ASCII characters. A UUID is recommended. 2. Read only queries can ignore this token since they are nullipotent by definition. 3. For the purposes of idempotency ensured by the request_id, a request is considered duplicate of another only if they have the same request_id and are actually duplicates. When determining whether a request is a duplicate of the previous request, all parameters in the request that may affect the behavior are considered. For example, query, connection_properties, query_parameters, use_legacy_sql are parameters that affect the result and are considered when determining whether a request is a duplicate, but properties like timeout_ms don't affect the result and are thus not considered. Dry run query requests are never considered duplicate of another request. 4. When a duplicate mutating query request is detected, it returns: a. the results of the mutation if it completes successfully within the timeout. b. the running operation if it is still in progress at the end of the timeout. 5. Its lifetime is limited to 15 minutes. In other words, if two requests are sent with the same request_id, but more than 15 minutes apart, idempotency is not guaranteed.
  *   `timeoutMs` (*type:* `integer()`, *default:* `nil`) - [Optional] How long to wait for the query to complete, in milliseconds, before the request times out and returns. Note that this is only a timeout for the request, not the query. If the query takes longer to run than the timeout value, the call returns without any results and with the 'jobComplete' flag set to false. You can call GetQueryResults() to wait for the query to complete and read the results. The default value is 10000 milliseconds (10 seconds).
  *   `useLegacySql` (*type:* `boolean()`, *default:* `true`) - Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true. If set to false, the query will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false.
  *   `useQueryCache` (*type:* `boolean()`, *default:* `true`) - [Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. The default value is true.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectionProperties => list(GoogleApi.BigQuery.V2.Model.ConnectionProperty.t()) | nil,
          :createSession => boolean() | nil,
          :defaultDataset => GoogleApi.BigQuery.V2.Model.DatasetReference.t() | nil,
          :dryRun => boolean() | nil,
          :kind => String.t() | nil,
          :labels => map() | nil,
          :location => String.t() | nil,
          :maxResults => integer() | nil,
          :maximumBytesBilled => String.t() | nil,
          :parameterMode => String.t() | nil,
          :preserveNulls => boolean() | nil,
          :query => String.t() | nil,
          :queryParameters => list(GoogleApi.BigQuery.V2.Model.QueryParameter.t()) | nil,
          :requestId => String.t() | nil,
          :timeoutMs => integer() | nil,
          :useLegacySql => boolean() | nil,
          :useQueryCache => boolean() | nil
        }

  field(:connectionProperties, as: GoogleApi.BigQuery.V2.Model.ConnectionProperty, type: :list)
  field(:createSession)
  field(:defaultDataset, as: GoogleApi.BigQuery.V2.Model.DatasetReference)
  field(:dryRun)
  field(:kind)
  field(:labels, type: :map)
  field(:location)
  field(:maxResults)
  field(:maximumBytesBilled)
  field(:parameterMode)
  field(:preserveNulls)
  field(:query)
  field(:queryParameters, as: GoogleApi.BigQuery.V2.Model.QueryParameter, type: :list)
  field(:requestId)
  field(:timeoutMs)
  field(:useLegacySql)
  field(:useQueryCache)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.QueryRequest do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.QueryRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.QueryRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
