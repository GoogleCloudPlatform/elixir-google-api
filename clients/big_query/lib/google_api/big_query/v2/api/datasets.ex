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

defmodule GoogleApi.BigQuery.V2.Api.Datasets do
  @moduledoc """
  API calls for all endpoints tagged `Datasets`.
  """

  alias GoogleApi.BigQuery.V2.Connection
  import GoogleApi.BigQuery.V2.RequestBuilder


  @doc """
  Deletes the dataset specified by the datasetId value. Before you can delete a dataset, you must delete all its tables, either manually or by specifying deleteContents. Immediately after deletion, you can create another dataset with the same name.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the dataset being deleted
  - dataset_id (String): Dataset ID of dataset being deleted
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :delete_contents (Boolean): If True, delete all the tables in the dataset. If False and the dataset contains tables, the request will fail. Default is False

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec bigquery_datasets_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def bigquery_datasets_delete(connection, project_id, dataset_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"deleteContents" => :query
    }
    %{}
    |> method(:delete)
    |> url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}", %{
         "projectId" => URI.encode_www_form(project_id),
         "datasetId" => URI.encode_www_form(dataset_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Returns the dataset specified by datasetID.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the requested dataset
  - dataset_id (String): Dataset ID of the requested dataset
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec bigquery_datasets_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.BigQuery.V2.Model.Dataset.t} | {:error, Tesla.Env.t}
  def bigquery_datasets_get(connection, project_id, dataset_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}", %{
         "projectId" => URI.encode_www_form(project_id),
         "datasetId" => URI.encode_www_form(dataset_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.BigQuery.V2.Model.Dataset{})
  end

  @doc """
  Creates a new empty dataset.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the new dataset
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Dataset): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec bigquery_datasets_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.BigQuery.V2.Model.Dataset.t} | {:error, Tesla.Env.t}
  def bigquery_datasets_insert(connection, project_id, opts \\ []) do
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
    |> url("/bigquery/v2/projects/{projectId}/datasets", %{
         "projectId" => URI.encode_www_form(project_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.BigQuery.V2.Model.Dataset{})
  end

  @doc """
  Lists all datasets in the specified project to which you have been granted the READER dataset role.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the datasets to be listed
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :all (Boolean): Whether to list all datasets, including hidden ones
    - :filter (String): An expression for filtering the results of the request by label. The syntax is \&quot;labels.&lt;name&gt;[:&lt;value&gt;]\&quot;. Multiple filters can be ANDed together by connecting with a space. Example: \&quot;labels.department:receiving labels.active\&quot;. See Filtering datasets using labels for details.
    - :max_results (Integer): The maximum number of results to return
    - :page_token (String): Page token, returned by a previous call, to request the next page of results

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.DatasetList{}} on success
  {:error, info} on failure
  """
  @spec bigquery_datasets_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.BigQuery.V2.Model.DatasetList.t} | {:error, Tesla.Env.t}
  def bigquery_datasets_list(connection, project_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"all" => :query,
      :"filter" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/bigquery/v2/projects/{projectId}/datasets", %{
         "projectId" => URI.encode_www_form(project_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.BigQuery.V2.Model.DatasetList{})
  end

  @doc """
  Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the dataset being updated
  - dataset_id (String): Dataset ID of the dataset being updated
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Dataset): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec bigquery_datasets_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.BigQuery.V2.Model.Dataset.t} | {:error, Tesla.Env.t}
  def bigquery_datasets_patch(connection, project_id, dataset_id, opts \\ []) do
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
    |> method(:patch)
    |> url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}", %{
         "projectId" => URI.encode_www_form(project_id),
         "datasetId" => URI.encode_www_form(dataset_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.BigQuery.V2.Model.Dataset{})
  end

  @doc """
  Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the dataset being updated
  - dataset_id (String): Dataset ID of the dataset being updated
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Dataset): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec bigquery_datasets_update(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.BigQuery.V2.Model.Dataset.t} | {:error, Tesla.Env.t}
  def bigquery_datasets_update(connection, project_id, dataset_id, opts \\ []) do
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
    |> method(:put)
    |> url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}", %{
         "projectId" => URI.encode_www_form(project_id),
         "datasetId" => URI.encode_www_form(dataset_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.BigQuery.V2.Model.Dataset{})
  end
end
