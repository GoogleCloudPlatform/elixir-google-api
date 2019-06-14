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

defmodule GoogleApi.Compute.V1.Api.ForwardingRules do
  @moduledoc """
  API calls for all endpoints tagged `ForwardingRules`.
  """

  alias GoogleApi.Compute.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves an aggregated list of forwarding rules.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :filter (String.t): A filter expression that filters resources listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The comparison operator must be either =, !=, >, or <.

  For example, if you are filtering Compute Engine instances, you can exclude instances named example-instance by specifying name != example-instance.

  You can also filter nested fields. For example, you could specify scheduling.automaticRestart = false to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels.

  To filter on multiple expressions, provide each separate expression within parentheses. For example, (scheduling.automaticRestart = true) (cpuPlatform = "Intel Skylake"). By default, each expression is an AND expression. However, you can include AND and OR expressions explicitly. For example, (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel Broadwell") AND (scheduling.automaticRestart = true).
    - :maxResults (integer()): The maximum number of results per page that should be returned. If the number of available results is larger than maxResults, Compute Engine returns a nextPageToken that can be used to get the next page of results in subsequent list requests. Acceptable values are 0 to 500, inclusive. (Default: 500)
    - :orderBy (String.t): Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name.

  You can also sort results in descending order based on the creation timestamp using orderBy="creationTimestamp desc". This sorts results based on the creationTimestamp field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first.

  Currently, only sorting by name or creationTimestamp desc is supported.
    - :pageToken (String.t): Specifies a page token to use. Set pageToken to the nextPageToken returned by a previous list request to get the next page of results.

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.ForwardingRuleAggregatedList{}} on success
  {:error, info} on failure
  """
  @spec compute_forwarding_rules_aggregated_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Compute.V1.Model.ForwardingRuleAggregatedList.t()}
          | {:error, Tesla.Env.t()}
  def compute_forwarding_rules_aggregated_list(
        connection,
        project,
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
      :filter => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/aggregated/forwardingRules", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Compute.V1.Model.ForwardingRuleAggregatedList{}]
    )
  end

  @doc """
  Deletes the specified ForwardingRule resource.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - region (String.t): Name of the region scoping this request.
  - forwarding_rule (String.t): Name of the ForwardingRule resource to delete.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :requestId (String.t): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.

  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.

  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_forwarding_rules_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Compute.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def compute_forwarding_rules_delete(
        connection,
        project,
        region,
        forwarding_rule,
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
      :requestId => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/{project}/regions/{region}/forwardingRules/{forwardingRule}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1),
        "forwardingRule" => URI.encode(forwarding_rule, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  Returns the specified ForwardingRule resource.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - region (String.t): Name of the region scoping this request.
  - forwarding_rule (String.t): Name of the ForwardingRule resource to return.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.ForwardingRule{}} on success
  {:error, info} on failure
  """
  @spec compute_forwarding_rules_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Compute.V1.Model.ForwardingRule.t()} | {:error, Tesla.Env.t()}
  def compute_forwarding_rules_get(
        connection,
        project,
        region,
        forwarding_rule,
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
      |> Request.method(:get)
      |> Request.url("/{project}/regions/{region}/forwardingRules/{forwardingRule}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1),
        "forwardingRule" => URI.encode(forwarding_rule, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.ForwardingRule{}])
  end

  @doc """
  Creates a ForwardingRule resource in the specified project and region using the data included in the request.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - region (String.t): Name of the region scoping this request.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :requestId (String.t): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.

  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.

  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    - :body (GoogleApi.Compute.V1.Model.ForwardingRule.t): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_forwarding_rules_insert(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Compute.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def compute_forwarding_rules_insert(
        connection,
        project,
        region,
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
      :requestId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/regions/{region}/forwardingRules", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  Retrieves a list of ForwardingRule resources available to the specified project and region.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - region (String.t): Name of the region scoping this request.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :filter (String.t): A filter expression that filters resources listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The comparison operator must be either =, !=, >, or <.

  For example, if you are filtering Compute Engine instances, you can exclude instances named example-instance by specifying name != example-instance.

  You can also filter nested fields. For example, you could specify scheduling.automaticRestart = false to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels.

  To filter on multiple expressions, provide each separate expression within parentheses. For example, (scheduling.automaticRestart = true) (cpuPlatform = "Intel Skylake"). By default, each expression is an AND expression. However, you can include AND and OR expressions explicitly. For example, (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel Broadwell") AND (scheduling.automaticRestart = true).
    - :maxResults (integer()): The maximum number of results per page that should be returned. If the number of available results is larger than maxResults, Compute Engine returns a nextPageToken that can be used to get the next page of results in subsequent list requests. Acceptable values are 0 to 500, inclusive. (Default: 500)
    - :orderBy (String.t): Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name.

  You can also sort results in descending order based on the creation timestamp using orderBy="creationTimestamp desc". This sorts results based on the creationTimestamp field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first.

  Currently, only sorting by name or creationTimestamp desc is supported.
    - :pageToken (String.t): Specifies a page token to use. Set pageToken to the nextPageToken returned by a previous list request to get the next page of results.

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.ForwardingRuleList{}} on success
  {:error, info} on failure
  """
  @spec compute_forwarding_rules_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Compute.V1.Model.ForwardingRuleList.t()} | {:error, Tesla.Env.t()}
  def compute_forwarding_rules_list(
        connection,
        project,
        region,
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
      :filter => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/regions/{region}/forwardingRules", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.ForwardingRuleList{}])
  end

  @doc """
  Changes target URL for forwarding rule. The new target should be of the same type as the old target.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - region (String.t): Name of the region scoping this request.
  - forwarding_rule (String.t): Name of the ForwardingRule resource in which target is to be set.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :requestId (String.t): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.

  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.

  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    - :body (GoogleApi.Compute.V1.Model.TargetReference.t): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_forwarding_rules_set_target(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Compute.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def compute_forwarding_rules_set_target(
        connection,
        project,
        region,
        forwarding_rule,
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
      :requestId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/regions/{region}/forwardingRules/{forwardingRule}/setTarget", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1),
        "forwardingRule" => URI.encode(forwarding_rule, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end
end
