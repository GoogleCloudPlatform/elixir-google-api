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

defmodule GoogleApi.BigQuery.V2.Model.JobConfigurationQuery do
  @moduledoc """
  

  ## Attributes

  - allowLargeResults (Boolean): [Optional] If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance. Requires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed. However, you must still set destinationTable when result size exceeds the allowed maximum response size. Defaults to: `null`.
  - createDisposition (String): [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a &#39;notFound&#39; error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion. Defaults to: `null`.
  - defaultDataset (DatasetReference): [Optional] Specifies the default dataset to use for unqualified table names in the query. Defaults to: `null`.
  - destinationTable (TableReference): [Optional] Describes the table where the query results should be stored. If not present, a new table will be created to store the results. This property must be set for large results that exceed the maximum response size. Defaults to: `null`.
  - flattenResults (Boolean): [Optional] If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results. allowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened. Defaults to: `null`.
  - maximumBillingTier (Integer): [Optional] Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge). If unspecified, this will be set to your project default. Defaults to: `1`.
  - maximumBytesBilled (String): [Optional] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge). If unspecified, this will be set to your project default. Defaults to: `null`.
  - parameterMode (String): Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query. Defaults to: `null`.
  - preserveNulls (Boolean): [Deprecated] This property is deprecated. Defaults to: `null`.
  - priority (String): [Optional] Specifies a priority for the query. Possible values include INTERACTIVE and BATCH. The default value is INTERACTIVE. Defaults to: `null`.
  - query (String): [Required] SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL. Defaults to: `null`.
  - queryParameters (List[QueryParameter]): Query parameters for standard SQL queries. Defaults to: `null`.
  - schemaUpdateOptions (List[String]): [Experimental] Allows the schema of the destination table to be updated as a side effect of the query job. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable. Defaults to: `null`.
  - tableDefinitions (Map[String, ExternalDataConfiguration]): [Optional] If querying an external data source outside of BigQuery, describes the data format, location and other properties of the data source. By defining these properties, the data source can then be queried as if it were a standard BigQuery table. Defaults to: `null`.
  - timePartitioning (TimePartitioning): [Experimental] If specified, configures time-based partitioning for the destination table. Defaults to: `null`.
  - useLegacySql (Boolean): Specifies whether to use BigQuery&#39;s legacy SQL dialect for this query. The default value is true. If set to false, the query will use BigQuery&#39;s standard SQL: https://cloud.google.com/bigquery/sql-reference/ When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false. Defaults to: `null`.
  - useQueryCache (Boolean): [Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified. The default value is true. Defaults to: `null`.
  - userDefinedFunctionResources (List[UserDefinedFunctionResource]): Describes user-defined function resources used in the query. Defaults to: `null`.
  - writeDisposition (String): [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a &#39;duplicate&#39; error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion. Defaults to: `null`.
  """

  defstruct [
    :"allowLargeResults",
    :"createDisposition",
    :"defaultDataset",
    :"destinationTable",
    :"flattenResults",
    :"maximumBillingTier",
    :"maximumBytesBilled",
    :"parameterMode",
    :"preserveNulls",
    :"priority",
    :"query",
    :"queryParameters",
    :"schemaUpdateOptions",
    :"tableDefinitions",
    :"timePartitioning",
    :"useLegacySql",
    :"useQueryCache",
    :"userDefinedFunctionResources",
    :"writeDisposition"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationQuery do
  import GoogleApi.BigQuery.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"defaultDataset", :struct, GoogleApi.BigQuery.V2.Model.DatasetReference, options)
    |> deserialize(:"destinationTable", :struct, GoogleApi.BigQuery.V2.Model.TableReference, options)
    |> deserialize(:"queryParameters", :list, GoogleApi.BigQuery.V2.Model.QueryParameter, options)
    |> deserialize(:"tableDefinitions", :map, GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration, options)
    |> deserialize(:"timePartitioning", :struct, GoogleApi.BigQuery.V2.Model.TimePartitioning, options)
    |> deserialize(:"userDefinedFunctionResources", :list, GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationQuery do
  def encode(value, options) do
    GoogleApi.BigQuery.V2.Deserializer.serialize_non_nil(value, options)
  end
end

