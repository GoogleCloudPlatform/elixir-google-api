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

defmodule GoogleApi.DNS.V1.Api.ManagedZones do
  @moduledoc """
  API calls for all endpoints tagged `ManagedZones`.
  """

  alias GoogleApi.DNS.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Create a new ManagedZone.

  ## Parameters

  - connection (GoogleApi.DNS.V1.Connection): Connection to server
  - project (String.t): Identifies the project addressed by this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :clientOperationId (String.t): For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
    - :body (ManagedZone): 

  ## Returns

  {:ok, %GoogleApi.DNS.V1.Model.ManagedZone{}} on success
  {:error, info} on failure
  """
  @spec dns_managed_zones_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.ManagedZone.t()} | {:error, Tesla.Env.t()}
  def dns_managed_zones_create(connection, project, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :clientOperationId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/managedZones", %{
        "project" => URI.encode_www_form(project)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.DNS.V1.Model.ManagedZone{})
  end

  @doc """
  Delete a previously created ManagedZone.

  ## Parameters

  - connection (GoogleApi.DNS.V1.Connection): Connection to server
  - project (String.t): Identifies the project addressed by this request.
  - managed_zone (String.t): Identifies the managed zone addressed by this request. Can be the managed zone name or id.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :clientOperationId (String.t): For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec dns_managed_zones_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def dns_managed_zones_delete(connection, project, managed_zone, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :clientOperationId => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/{project}/managedZones/{managedZone}", %{
        "project" => URI.encode_www_form(project),
        "managedZone" => URI.encode_www_form(managed_zone)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(decode: false)
  end

  @doc """
  Fetch the representation of an existing ManagedZone.

  ## Parameters

  - connection (GoogleApi.DNS.V1.Connection): Connection to server
  - project (String.t): Identifies the project addressed by this request.
  - managed_zone (String.t): Identifies the managed zone addressed by this request. Can be the managed zone name or id.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :clientOperationId (String.t): For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.

  ## Returns

  {:ok, %GoogleApi.DNS.V1.Model.ManagedZone{}} on success
  {:error, info} on failure
  """
  @spec dns_managed_zones_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.ManagedZone.t()} | {:error, Tesla.Env.t()}
  def dns_managed_zones_get(connection, project, managed_zone, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :clientOperationId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/managedZones/{managedZone}", %{
        "project" => URI.encode_www_form(project),
        "managedZone" => URI.encode_www_form(managed_zone)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.DNS.V1.Model.ManagedZone{})
  end

  @doc """
  Enumerate ManagedZones that have been created but not yet deleted.

  ## Parameters

  - connection (GoogleApi.DNS.V1.Connection): Connection to server
  - project (String.t): Identifies the project addressed by this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :dnsName (String.t): Restricts the list to return only zones with this domain name.
    - :maxResults (integer()): Optional. Maximum number of results to be returned. If unspecified, the server will decide how many results to return.
    - :pageToken (String.t): Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.

  ## Returns

  {:ok, %GoogleApi.DNS.V1.Model.ManagedZonesListResponse{}} on success
  {:error, info} on failure
  """
  @spec dns_managed_zones_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.ManagedZonesListResponse.t()} | {:error, Tesla.Env.t()}
  def dns_managed_zones_list(connection, project, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dnsName => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/managedZones", %{
        "project" => URI.encode_www_form(project)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.DNS.V1.Model.ManagedZonesListResponse{})
  end

  @doc """
  Apply a partial update to an existing ManagedZone.

  ## Parameters

  - connection (GoogleApi.DNS.V1.Connection): Connection to server
  - project (String.t): Identifies the project addressed by this request.
  - managed_zone (String.t): Identifies the managed zone addressed by this request. Can be the managed zone name or id.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :clientOperationId (String.t): For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
    - :body (ManagedZone): 

  ## Returns

  {:ok, %GoogleApi.DNS.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec dns_managed_zones_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def dns_managed_zones_patch(connection, project, managed_zone, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :clientOperationId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/{project}/managedZones/{managedZone}", %{
        "project" => URI.encode_www_form(project),
        "managedZone" => URI.encode_www_form(managed_zone)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.DNS.V1.Model.Operation{})
  end

  @doc """
  Update an existing ManagedZone.

  ## Parameters

  - connection (GoogleApi.DNS.V1.Connection): Connection to server
  - project (String.t): Identifies the project addressed by this request.
  - managed_zone (String.t): Identifies the managed zone addressed by this request. Can be the managed zone name or id.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :clientOperationId (String.t): For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
    - :body (ManagedZone): 

  ## Returns

  {:ok, %GoogleApi.DNS.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec dns_managed_zones_update(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def dns_managed_zones_update(connection, project, managed_zone, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :clientOperationId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/{project}/managedZones/{managedZone}", %{
        "project" => URI.encode_www_form(project),
        "managedZone" => URI.encode_www_form(managed_zone)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.DNS.V1.Model.Operation{})
  end
end
