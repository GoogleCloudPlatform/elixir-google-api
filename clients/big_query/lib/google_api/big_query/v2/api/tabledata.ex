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

defmodule GoogleApi.BigQuery.V2.Api.Tabledata do
  @moduledoc """
  API calls for all endpoints tagged `Tabledata`.
  """

  alias GoogleApi.BigQuery.V2.Connection
  import GoogleApi.BigQuery.V2.RequestBuilder


  @doc """
  Streams data into BigQuery one record at a time without needing to run a load job. Requires the WRITER dataset role.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the destination table.
  - dataset_id (String): Dataset ID of the destination table.
  - table_id (String): Table ID of the destination table.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (TableDataInsertAllRequest): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquery_tabledata_insert_all(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponse.t} | {:error, Tesla.Env.t}
  def bigquery_tabledata_insert_all(connection, project_id, dataset_id, table_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}/tables/{tableId}/insertAll", %{
         "projectId" => URI.encode_www_form(project_id),
         "datasetId" => URI.encode_www_form(dataset_id),
         "tableId" => URI.encode_www_form(table_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponse{})
  end

  @doc """
  Retrieves table data from a specified set of rows. Requires the READER dataset role.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the table to read
  - dataset_id (String): Dataset ID of the table to read
  - table_id (String): Table ID of the table to read
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): Maximum number of results to return
    - :page_token (String): Page token, returned by a previous call, identifying the result set
    - :selected_fields (String): List of fields to return (comma-separated). If unspecified, all fields are returned
    - :start_index (String): Zero-based index of the starting row to read

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.TableDataList{}} on success
  {:error, info} on failure
  """
  @spec bigquery_tabledata_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.BigQuery.V2.Model.TableDataList.t} | {:error, Tesla.Env.t}
  def bigquery_tabledata_list(connection, project_id, dataset_id, table_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query,
      :"selectedFields" => :query,
      :"startIndex" => :query
    }
    %{}
    |> method(:get)
    |> url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}/tables/{tableId}/data", %{
         "projectId" => URI.encode_www_form(project_id),
         "datasetId" => URI.encode_www_form(dataset_id),
         "tableId" => URI.encode_www_form(table_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.BigQuery.V2.Model.TableDataList{})
  end
end
