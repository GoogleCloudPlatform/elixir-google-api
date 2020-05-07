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

defmodule GoogleApi.Admin.Directory_v1.Api.Mobiledevices do
  @moduledoc """
  API calls for all endpoints tagged `Mobiledevices`.
  """

  alias GoogleApi.Admin.Directory_v1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Take action on Mobile Device

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Directory_v1.Connection.t`) - Connection to server
  *   `customer_id` (*type:* `String.t`) - Immutable ID of the G Suite account
  *   `resource_id` (*type:* `String.t`) - Immutable ID of Mobile Device
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Admin.Directory_v1.Model.MobileDeviceAction.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec directory_mobiledevices_action(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, any()}
  def directory_mobiledevices_action(
        connection,
        customer_id,
        resource_id,
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
      |> Request.url("/customer/{customerId}/devices/mobile/{resourceId}/action", %{
        "customerId" => URI.encode(customer_id, &URI.char_unreserved?/1),
        "resourceId" => URI.encode(resource_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Delete Mobile Device

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Directory_v1.Connection.t`) - Connection to server
  *   `customer_id` (*type:* `String.t`) - Immutable ID of the G Suite account
  *   `resource_id` (*type:* `String.t`) - Immutable ID of Mobile Device
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
  @spec directory_mobiledevices_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, any()}
  def directory_mobiledevices_delete(
        connection,
        customer_id,
        resource_id,
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
      |> Request.url("/customer/{customerId}/devices/mobile/{resourceId}", %{
        "customerId" => URI.encode(customer_id, &URI.char_unreserved?/1),
        "resourceId" => URI.encode(resource_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieve Mobile Device

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Directory_v1.Connection.t`) - Connection to server
  *   `customer_id` (*type:* `String.t`) - Immutable ID of the G Suite account
  *   `resource_id` (*type:* `String.t`) - Immutable ID of Mobile Device
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:projection` (*type:* `String.t`) - Restrict information returned to a set of selected fields.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Directory_v1.Model.MobileDevice{}}` on success
  *   `{:error, info}` on failure
  """
  @spec directory_mobiledevices_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.MobileDevice.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def directory_mobiledevices_get(
        connection,
        customer_id,
        resource_id,
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
      :projection => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/customer/{customerId}/devices/mobile/{resourceId}", %{
        "customerId" => URI.encode(customer_id, &URI.char_unreserved?/1),
        "resourceId" => URI.encode(resource_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Directory_v1.Model.MobileDevice{}])
  end

  @doc """
  Retrieve all Mobile Devices of a customer (paginated)

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Directory_v1.Connection.t`) - Connection to server
  *   `customer_id` (*type:* `String.t`) - Immutable ID of the G Suite account
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return. Max allowed value is 100.
      *   `:orderBy` (*type:* `String.t`) - Column to use for sorting results
      *   `:pageToken` (*type:* `String.t`) - Token to specify next page in the list
      *   `:projection` (*type:* `String.t`) - Restrict information returned to a set of selected fields.
      *   `:query` (*type:* `String.t`) - Search string in the format given at http://support.google.com/a/bin/answer.py?answer=1408863#search
      *   `:sortOrder` (*type:* `String.t`) - Whether to return results in ascending or descending order. Only of use when orderBy is also used
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Directory_v1.Model.MobileDevices{}}` on success
  *   `{:error, info}` on failure
  """
  @spec directory_mobiledevices_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.MobileDevices.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def directory_mobiledevices_list(connection, customer_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query,
      :projection => :query,
      :query => :query,
      :sortOrder => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/customer/{customerId}/devices/mobile", %{
        "customerId" => URI.encode(customer_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Directory_v1.Model.MobileDevices{}])
  end
end
