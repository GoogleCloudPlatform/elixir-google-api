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

defmodule GoogleApi.BigQuery.V2.Model.QueryResponse do
  @moduledoc """
  

  ## Attributes

  - cacheHit (Boolean): Whether the query result was fetched from the query cache. Defaults to: `null`.
  - errors (List[ErrorProto]): [Output-only] The first errors or warnings encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful. Defaults to: `null`.
  - jobComplete (Boolean): Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available. Defaults to: `null`.
  - jobReference (JobReference): Reference to the Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults). Defaults to: `null`.
  - kind (String): The resource type. Defaults to: `null`.
  - numDmlAffectedRows (String): [Output-only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE. Defaults to: `null`.
  - pageToken (String): A token used for paging results. Defaults to: `null`.
  - rows (List[TableRow]): An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above. Defaults to: `null`.
  - schema (TableSchema): The schema of the results. Present only when the query completes successfully. Defaults to: `null`.
  - totalBytesProcessed (String): The total number of bytes processed for this query. If this query was a dry run, this is the number of bytes that would be processed if the query were run. Defaults to: `null`.
  - totalRows (String): The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results. Defaults to: `null`.
  """

  defstruct [
    :"cacheHit",
    :"errors",
    :"jobComplete",
    :"jobReference",
    :"kind",
    :"numDmlAffectedRows",
    :"pageToken",
    :"rows",
    :"schema",
    :"totalBytesProcessed",
    :"totalRows"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.QueryResponse do
  import GoogleApi.BigQuery.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"errors", :list, GoogleApi.BigQuery.V2.Model.ErrorProto, options)
    |> deserialize(:"jobReference", :struct, GoogleApi.BigQuery.V2.Model.JobReference, options)
    |> deserialize(:"rows", :list, GoogleApi.BigQuery.V2.Model.TableRow, options)
    |> deserialize(:"schema", :struct, GoogleApi.BigQuery.V2.Model.TableSchema, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.QueryResponse do
  def encode(value, options) do
    GoogleApi.BigQuery.V2.Deserializer.serialize_non_nil(value, options)
  end
end

