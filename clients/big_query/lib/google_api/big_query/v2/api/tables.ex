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

defmodule GoogleApi.BigQuery.V2.Api.Tables do
  @moduledoc """
  API calls for all endpoints tagged `Tables`.
  """

  alias GoogleApi.BigQuery.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Deletes the table specified by tableId from the dataset. If the table contains data, all the data will be deleted.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID of the table to delete
  *   `dataset_id` (*type:* `String.t`) - Dataset ID of the table to delete
  *   `table_id` (*type:* `String.t`) - Table ID of the table to delete
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_tables_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, any()}
  def bigquery_tables_delete(
        connection,
        project_id,
        dataset_id,
        table_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}/tables/{tableId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1),
        "tableId" => URI.encode(table_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Gets the specified table resource by table ID. This method does not return the data in the table, it only returns the table resource, which describes the structure of this table.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID of the requested table
  *   `dataset_id` (*type:* `String.t`) - Dataset ID of the requested table
  *   `table_id` (*type:* `String.t`) - Table ID of the requested table
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:selectedFields` (*type:* `String.t`) - List of fields to return (comma-separated). If unspecified, all fields are returned
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.Table{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_tables_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.BigQuery.V2.Model.Table.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def bigquery_tables_get(
        connection,
        project_id,
        dataset_id,
        table_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :selectedFields => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}/tables/{tableId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1),
        "tableId" => URI.encode(table_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Table{}])
  end

  @doc """
  Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `resource` (*type:* `String.t`) - REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.BigQuery.V2.Model.GetIamPolicyRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.Policy{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_tables_get_iam_policy(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.Policy.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def bigquery_tables_get_iam_policy(connection, resource, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/bigquery/v2/{+resource}:getIamPolicy", %{
        "resource" => URI.encode(resource, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Policy{}])
  end

  @doc """
  Creates a new, empty table in the dataset.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID of the new table
  *   `dataset_id` (*type:* `String.t`) - Dataset ID of the new table
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.BigQuery.V2.Model.Table.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.Table{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_tables_insert(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.Table.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def bigquery_tables_insert(
        connection,
        project_id,
        dataset_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}/tables", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Table{}])
  end

  @doc """
  Lists all tables in the specified dataset. Requires the READER dataset role.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID of the tables to list
  *   `dataset_id` (*type:* `String.t`) - Dataset ID of the tables to list
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return
      *   `:pageToken` (*type:* `String.t`) - Page token, returned by a previous call, to request the next page of results
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.TableList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_tables_list(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.TableList.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def bigquery_tables_list(connection, project_id, dataset_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}/tables", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.TableList{}])
  end

  @doc """
  Updates information in an existing table. The update method replaces the entire table resource, whereas the patch method only replaces fields that are provided in the submitted table resource. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID of the table to update
  *   `dataset_id` (*type:* `String.t`) - Dataset ID of the table to update
  *   `table_id` (*type:* `String.t`) - Table ID of the table to update
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.BigQuery.V2.Model.Table.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.Table{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_tables_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.BigQuery.V2.Model.Table.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def bigquery_tables_patch(
        connection,
        project_id,
        dataset_id,
        table_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}/tables/{tableId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1),
        "tableId" => URI.encode(table_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Table{}])
  end

  @doc """
  Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `resource` (*type:* `String.t`) - REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.BigQuery.V2.Model.SetIamPolicyRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.Policy{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_tables_set_iam_policy(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.Policy.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def bigquery_tables_set_iam_policy(connection, resource, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/bigquery/v2/{+resource}:setIamPolicy", %{
        "resource" => URI.encode(resource, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Policy{}])
  end

  @doc """
  Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `resource` (*type:* `String.t`) - REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.BigQuery.V2.Model.TestIamPermissionsRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.TestIamPermissionsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_tables_test_iam_permissions(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.TestIamPermissionsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def bigquery_tables_test_iam_permissions(
        connection,
        resource,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/bigquery/v2/{+resource}:testIamPermissions", %{
        "resource" => URI.encode(resource, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.BigQuery.V2.Model.TestIamPermissionsResponse{}]
    )
  end

  @doc """
  Updates information in an existing table. The update method replaces the entire table resource, whereas the patch method only replaces fields that are provided in the submitted table resource.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID of the table to update
  *   `dataset_id` (*type:* `String.t`) - Dataset ID of the table to update
  *   `table_id` (*type:* `String.t`) - Table ID of the table to update
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.BigQuery.V2.Model.Table.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.Table{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_tables_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.BigQuery.V2.Model.Table.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def bigquery_tables_update(
        connection,
        project_id,
        dataset_id,
        table_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}/tables/{tableId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1),
        "tableId" => URI.encode(table_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Table{}])
  end
end
