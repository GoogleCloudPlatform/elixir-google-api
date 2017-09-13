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

defmodule GoogleApi.DFAReporting.V28.Api.FloodlightActivityGroups do
  @moduledoc """
  API calls for all endpoints tagged `FloodlightActivityGroups`.
  """

  alias GoogleApi.DFAReporting.V28.Connection
  import GoogleApi.DFAReporting.V28.RequestBuilder


  @doc """
  Gets one floodlight activity group by ID.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - id (String): Floodlight activity Group ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_floodlight_activity_groups_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup.t} | {:error, Tesla.Env.t}
  def dfareporting_floodlight_activity_groups_get(connection, profile_id, id, opts \\ []) do
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
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/floodlightActivityGroups/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup{})
  end

  @doc """
  Inserts a new floodlight activity group.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (FloodlightActivityGroup): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_floodlight_activity_groups_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup.t} | {:error, Tesla.Env.t}
  def dfareporting_floodlight_activity_groups_insert(connection, profile_id, opts \\ []) do
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
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/floodlightActivityGroups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup{})
  end

  @doc """
  Retrieves a list of floodlight activity groups, possibly filtered. This method supports paging.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :advertiser_id (String): Select only floodlight activity groups with the specified advertiser ID. Must specify either advertiserId or floodlightConfigurationId for a non-empty result.
    - :floodlight_configuration_id (String): Select only floodlight activity groups with the specified floodlight configuration ID. Must specify either advertiserId, or floodlightConfigurationId for a non-empty result.
    - :ids (List[String]): Select only floodlight activity groups with the specified IDs. Must specify either advertiserId or floodlightConfigurationId for a non-empty result.
    - :max_results (Integer): Maximum number of results to return.
    - :page_token (String): Value of the nextPageToken from the previous result page.
    - :search_string (String): Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \&quot;floodlightactivitygroup*2015\&quot; will return objects with names like \&quot;floodlightactivitygroup June 2015\&quot;, \&quot;floodlightactivitygroup April 2015\&quot;, or simply \&quot;floodlightactivitygroup 2015\&quot;. Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \&quot;floodlightactivitygroup\&quot; will match objects with name \&quot;my floodlightactivitygroup activity\&quot;, \&quot;floodlightactivitygroup 2015\&quot;, or simply \&quot;floodlightactivitygroup\&quot;.
    - :sort_field (String): Field by which to sort the list.
    - :sort_order (String): Order of sorted results.
    - :type (String): Select only floodlight activity groups with the specified floodlight activity group type.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroupsListResponse{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_floodlight_activity_groups_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroupsListResponse.t} | {:error, Tesla.Env.t}
  def dfareporting_floodlight_activity_groups_list(connection, profile_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"advertiserId" => :query,
      :"floodlightConfigurationId" => :query,
      :"ids" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query,
      :"searchString" => :query,
      :"sortField" => :query,
      :"sortOrder" => :query,
      :"type" => :query
    }
    %{}
    |> method(:get)
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/floodlightActivityGroups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroupsListResponse{})
  end

  @doc """
  Updates an existing floodlight activity group. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - id (String): Floodlight activity Group ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (FloodlightActivityGroup): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_floodlight_activity_groups_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup.t} | {:error, Tesla.Env.t}
  def dfareporting_floodlight_activity_groups_patch(connection, profile_id, id, opts \\ []) do
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
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/floodlightActivityGroups")
    |> add_param(:query, :"id", id)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup{})
  end

  @doc """
  Updates an existing floodlight activity group.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (FloodlightActivityGroup): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_floodlight_activity_groups_update(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup.t} | {:error, Tesla.Env.t}
  def dfareporting_floodlight_activity_groups_update(connection, profile_id, opts \\ []) do
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
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/floodlightActivityGroups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup{})
  end
end
