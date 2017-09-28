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

defmodule GoogleApi.AndroidEnterprise.V1.Api.Storelayoutclusters do
  @moduledoc """
  API calls for all endpoints tagged `Storelayoutclusters`.
  """

  alias GoogleApi.AndroidEnterprise.V1.Connection
  import GoogleApi.AndroidEnterprise.V1.RequestBuilder


  @doc """
  Deletes a cluster.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - page_id (String): The ID of the page.
  - cluster_id (String): The ID of the cluster.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_storelayoutclusters_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def androidenterprise_storelayoutclusters_delete(connection, enterprise_id, page_id, cluster_id, opts \\ []) do
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
    |> method(:delete)
    |> url("/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}", %{
         "enterpriseId" => URI.encode_www_form(enterprise_id),
         "pageId" => URI.encode_www_form(page_id),
         "clusterId" => URI.encode_www_form(cluster_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieves details of a cluster.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - page_id (String): The ID of the page.
  - cluster_id (String): The ID of the cluster.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.StoreCluster{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_storelayoutclusters_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.StoreCluster.t} | {:error, Tesla.Env.t}
  def androidenterprise_storelayoutclusters_get(connection, enterprise_id, page_id, cluster_id, opts \\ []) do
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
    |> url("/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}", %{
         "enterpriseId" => URI.encode_www_form(enterprise_id),
         "pageId" => URI.encode_www_form(page_id),
         "clusterId" => URI.encode_www_form(cluster_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.StoreCluster{})
  end

  @doc """
  Inserts a new cluster in a page.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - page_id (String): The ID of the page.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (StoreCluster): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.StoreCluster{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_storelayoutclusters_insert(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.StoreCluster.t} | {:error, Tesla.Env.t}
  def androidenterprise_storelayoutclusters_insert(connection, enterprise_id, page_id, opts \\ []) do
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
    |> url("/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters", %{
         "enterpriseId" => URI.encode_www_form(enterprise_id),
         "pageId" => URI.encode_www_form(page_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.StoreCluster{})
  end

  @doc """
  Retrieves the details of all clusters on the specified page.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - page_id (String): The ID of the page.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.StoreLayoutClustersListResponse{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_storelayoutclusters_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.StoreLayoutClustersListResponse.t} | {:error, Tesla.Env.t}
  def androidenterprise_storelayoutclusters_list(connection, enterprise_id, page_id, opts \\ []) do
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
    |> url("/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters", %{
         "enterpriseId" => URI.encode_www_form(enterprise_id),
         "pageId" => URI.encode_www_form(page_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.StoreLayoutClustersListResponse{})
  end

  @doc """
  Updates a cluster. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - page_id (String): The ID of the page.
  - cluster_id (String): The ID of the cluster.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (StoreCluster): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.StoreCluster{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_storelayoutclusters_patch(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.StoreCluster.t} | {:error, Tesla.Env.t}
  def androidenterprise_storelayoutclusters_patch(connection, enterprise_id, page_id, cluster_id, opts \\ []) do
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
    |> url("/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}", %{
         "enterpriseId" => URI.encode_www_form(enterprise_id),
         "pageId" => URI.encode_www_form(page_id),
         "clusterId" => URI.encode_www_form(cluster_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.StoreCluster{})
  end

  @doc """
  Updates a cluster.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - page_id (String): The ID of the page.
  - cluster_id (String): The ID of the cluster.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (StoreCluster): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.StoreCluster{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_storelayoutclusters_update(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.StoreCluster.t} | {:error, Tesla.Env.t}
  def androidenterprise_storelayoutclusters_update(connection, enterprise_id, page_id, cluster_id, opts \\ []) do
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
    |> url("/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}", %{
         "enterpriseId" => URI.encode_www_form(enterprise_id),
         "pageId" => URI.encode_www_form(page_id),
         "clusterId" => URI.encode_www_form(cluster_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.StoreCluster{})
  end
end
