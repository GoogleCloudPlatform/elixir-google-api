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

defmodule GoogleApi.AdSenseHost.V41.Api.Accounts do
  @moduledoc """
  API calls for all endpoints tagged `Accounts`.
  """

  alias GoogleApi.AdSenseHost.V41.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Get information about the selected associated AdSense account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - Account to get information about.
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

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.Account{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_accounts_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.Account.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def adsensehost_accounts_get(connection, account_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/accounts/{accountId}", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.Account{}])
  end

  @doc """
  List hosted accounts associated with this AdSense account by ad client id.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `filter_ad_client_id` (*type:* `list(String.t)`) - Ad clients to list accounts for.
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

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.Accounts{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_accounts_list(Tesla.Env.client(), list(String.t()), keyword(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.Accounts.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def adsensehost_accounts_list(
        connection,
        filter_ad_client_id,
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
      |> Request.url("/accounts", %{})
      |> Request.add_param(:query, :filterAdClientId, filter_ad_client_id)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.Accounts{}])
  end

  @doc """
  Get information about one of the ad clients in the specified publisher's AdSense account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - Account which contains the ad client.
  *   `ad_client_id` (*type:* `String.t`) - Ad client to get.
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

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.AdClient{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_accounts_adclients_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdClient.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def adsensehost_accounts_adclients_get(
        connection,
        account_id,
        ad_client_id,
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
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.AdClient{}])
  end

  @doc """
  List all hosted ad clients in the specified hosted account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - Account for which to list ad clients.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of ad clients to include in the response, used for paging.
      *   `:pageToken` (*type:* `String.t`) - A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.AdClients{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_accounts_adclients_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdClients.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def adsensehost_accounts_adclients_list(
        connection,
        account_id,
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
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts/{accountId}/adclients", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.AdClients{}])
  end

  @doc """
  Delete the specified ad unit from the specified publisher AdSense account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - Account which contains the ad unit.
  *   `ad_client_id` (*type:* `String.t`) - Ad client for which to get ad unit.
  *   `ad_unit_id` (*type:* `String.t`) - Ad unit to delete.
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

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.AdUnit{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_accounts_adunits_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdUnit.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def adsensehost_accounts_adunits_delete(
        connection,
        account_id,
        ad_client_id,
        ad_unit_id,
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
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1),
        "adUnitId" => URI.encode(ad_unit_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.AdUnit{}])
  end

  @doc """
  Get the specified host ad unit in this AdSense account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - Account which contains the ad unit.
  *   `ad_client_id` (*type:* `String.t`) - Ad client for which to get ad unit.
  *   `ad_unit_id` (*type:* `String.t`) - Ad unit to get.
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

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.AdUnit{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_accounts_adunits_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdUnit.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def adsensehost_accounts_adunits_get(
        connection,
        account_id,
        ad_client_id,
        ad_unit_id,
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
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1),
        "adUnitId" => URI.encode(ad_unit_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.AdUnit{}])
  end

  @doc """
  Get ad code for the specified ad unit, attaching the specified host custom channels.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - Account which contains the ad client.
  *   `ad_client_id` (*type:* `String.t`) - Ad client with contains the ad unit.
  *   `ad_unit_id` (*type:* `String.t`) - Ad unit to get the code for.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:hostCustomChannelId` (*type:* `list(String.t)`) - Host custom channel to attach to the ad code.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.AdCode{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_accounts_adunits_get_ad_code(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdCode.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def adsensehost_accounts_adunits_get_ad_code(
        connection,
        account_id,
        ad_client_id,
        ad_unit_id,
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
      :hostCustomChannelId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}/adcode", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1),
        "adUnitId" => URI.encode(ad_unit_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.AdCode{}])
  end

  @doc """
  Insert the supplied ad unit into the specified publisher AdSense account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - Account which will contain the ad unit.
  *   `ad_client_id` (*type:* `String.t`) - Ad client into which to insert the ad unit.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AdSenseHost.V41.Model.AdUnit.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.AdUnit{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_accounts_adunits_insert(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdUnit.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def adsensehost_accounts_adunits_insert(
        connection,
        account_id,
        ad_client_id,
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
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.AdUnit{}])
  end

  @doc """
  List all ad units in the specified publisher's AdSense account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - Account which contains the ad client.
  *   `ad_client_id` (*type:* `String.t`) - Ad client for which to list ad units.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:includeInactive` (*type:* `boolean()`) - Whether to include inactive ad units. Default: true.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of ad units to include in the response, used for paging.
      *   `:pageToken` (*type:* `String.t`) - A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.AdUnits{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_accounts_adunits_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdUnits.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def adsensehost_accounts_adunits_list(
        connection,
        account_id,
        ad_client_id,
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
      :includeInactive => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.AdUnits{}])
  end

  @doc """
  Update the supplied ad unit in the specified publisher AdSense account. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - Account which contains the ad client.
  *   `ad_client_id` (*type:* `String.t`) - Ad client which contains the ad unit.
  *   `ad_unit_id` (*type:* `String.t`) - Ad unit to get.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AdSenseHost.V41.Model.AdUnit.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.AdUnit{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_accounts_adunits_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdUnit.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def adsensehost_accounts_adunits_patch(
        connection,
        account_id,
        ad_client_id,
        ad_unit_id,
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
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :adUnitId, ad_unit_id)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.AdUnit{}])
  end

  @doc """
  Update the supplied ad unit in the specified publisher AdSense account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - Account which contains the ad client.
  *   `ad_client_id` (*type:* `String.t`) - Ad client which contains the ad unit.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AdSenseHost.V41.Model.AdUnit.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.AdUnit{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_accounts_adunits_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdUnit.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def adsensehost_accounts_adunits_update(
        connection,
        account_id,
        ad_client_id,
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
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.AdUnit{}])
  end

  @doc """
  Generate an AdSense report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify "alt=csv" as a query parameter.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - Hosted account upon which to report.
  *   `start_date` (*type:* `String.t`) - Start of the date range to report on in "YYYY-MM-DD" format, inclusive.
  *   `end_date` (*type:* `String.t`) - End of the date range to report on in "YYYY-MM-DD" format, inclusive.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:dimension` (*type:* `list(String.t)`) - Dimensions to base the report on.
      *   `:filter` (*type:* `list(String.t)`) - Filters to be run on the report.
      *   `:locale` (*type:* `String.t`) - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of rows of report data to return.
      *   `:metric` (*type:* `list(String.t)`) - Numeric columns to include in the report.
      *   `:sort` (*type:* `list(String.t)`) - The name of a dimension or metric to sort the resulting report on, optionally prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is specified, the column is sorted ascending.
      *   `:startIndex` (*type:* `integer()`) - Index of the first row of report data to return.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.Report{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_accounts_reports_generate(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.Report.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def adsensehost_accounts_reports_generate(
        connection,
        account_id,
        start_date,
        end_date,
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
      :dimension => :query,
      :filter => :query,
      :locale => :query,
      :maxResults => :query,
      :metric => :query,
      :sort => :query,
      :startIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts/{accountId}/reports", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :startDate, start_date)
      |> Request.add_param(:query, :endDate, end_date)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.Report{}])
  end
end
