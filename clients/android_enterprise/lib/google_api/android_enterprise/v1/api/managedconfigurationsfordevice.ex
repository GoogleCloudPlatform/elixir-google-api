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

defmodule GoogleApi.AndroidEnterprise.V1.Api.Managedconfigurationsfordevice do
  @moduledoc """
  API calls for all endpoints tagged `Managedconfigurationsfordevice`.
  """

  alias GoogleApi.AndroidEnterprise.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Removes a per-device managed configuration for an app for the specified device.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidEnterprise.V1.Connection.t`) - Connection to server
  *   `enterprise_id` (*type:* `String.t`) - The ID of the enterprise.
  *   `user_id` (*type:* `String.t`) - The ID of the user.
  *   `device_id` (*type:* `String.t`) - The Android ID of the device.
  *   `managed_configuration_for_device_id` (*type:* `String.t`) - The ID of the managed configuration (a product ID), e.g. "app:com.google.android.gm".
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
  @spec androidenterprise_managedconfigurationsfordevice_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def androidenterprise_managedconfigurationsfordevice_delete(
        connection,
        enterprise_id,
        user_id,
        device_id,
        managed_configuration_for_device_id,
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
      |> Request.url(
        "/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}",
        %{
          "enterpriseId" => URI.encode(enterprise_id, &URI.char_unreserved?/1),
          "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
          "deviceId" => URI.encode(device_id, &URI.char_unreserved?/1),
          "managedConfigurationForDeviceId" =>
            URI.encode(managed_configuration_for_device_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves details of a per-device managed configuration.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidEnterprise.V1.Connection.t`) - Connection to server
  *   `enterprise_id` (*type:* `String.t`) - The ID of the enterprise.
  *   `user_id` (*type:* `String.t`) - The ID of the user.
  *   `device_id` (*type:* `String.t`) - The Android ID of the device.
  *   `managed_configuration_for_device_id` (*type:* `String.t`) - The ID of the managed configuration (a product ID), e.g. "app:com.google.android.gm".
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

  *   `{:ok, %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidenterprise_managedconfigurationsfordevice_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_managedconfigurationsfordevice_get(
        connection,
        enterprise_id,
        user_id,
        device_id,
        managed_configuration_for_device_id,
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
      |> Request.url(
        "/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}",
        %{
          "enterpriseId" => URI.encode(enterprise_id, &URI.char_unreserved?/1),
          "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
          "deviceId" => URI.encode(device_id, &URI.char_unreserved?/1),
          "managedConfigurationForDeviceId" =>
            URI.encode(managed_configuration_for_device_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}]
    )
  end

  @doc """
  Lists all the per-device managed configurations for the specified device. Only the ID is set.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidEnterprise.V1.Connection.t`) - Connection to server
  *   `enterprise_id` (*type:* `String.t`) - The ID of the enterprise.
  *   `user_id` (*type:* `String.t`) - The ID of the user.
  *   `device_id` (*type:* `String.t`) - The Android ID of the device.
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

  *   `{:ok, %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForDeviceListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidenterprise_managedconfigurationsfordevice_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForDeviceListResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_managedconfigurationsfordevice_list(
        connection,
        enterprise_id,
        user_id,
        device_id,
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
      |> Request.url(
        "/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice",
        %{
          "enterpriseId" => URI.encode(enterprise_id, &URI.char_unreserved?/1),
          "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
          "deviceId" => URI.encode(device_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForDeviceListResponse{}
        ]
    )
  end

  @doc """
  Adds or updates a per-device managed configuration for an app for the specified device. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidEnterprise.V1.Connection.t`) - Connection to server
  *   `enterprise_id` (*type:* `String.t`) - The ID of the enterprise.
  *   `user_id` (*type:* `String.t`) - The ID of the user.
  *   `device_id` (*type:* `String.t`) - The Android ID of the device.
  *   `managed_configuration_for_device_id` (*type:* `String.t`) - The ID of the managed configuration (a product ID), e.g. "app:com.google.android.gm".
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidenterprise_managedconfigurationsfordevice_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_managedconfigurationsfordevice_patch(
        connection,
        enterprise_id,
        user_id,
        device_id,
        managed_configuration_for_device_id,
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
      |> Request.url(
        "/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}",
        %{
          "enterpriseId" => URI.encode(enterprise_id, &URI.char_unreserved?/1),
          "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
          "deviceId" => URI.encode(device_id, &URI.char_unreserved?/1),
          "managedConfigurationForDeviceId" =>
            URI.encode(managed_configuration_for_device_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}]
    )
  end

  @doc """
  Adds or updates a per-device managed configuration for an app for the specified device.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidEnterprise.V1.Connection.t`) - Connection to server
  *   `enterprise_id` (*type:* `String.t`) - The ID of the enterprise.
  *   `user_id` (*type:* `String.t`) - The ID of the user.
  *   `device_id` (*type:* `String.t`) - The Android ID of the device.
  *   `managed_configuration_for_device_id` (*type:* `String.t`) - The ID of the managed configuration (a product ID), e.g. "app:com.google.android.gm".
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidenterprise_managedconfigurationsfordevice_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_managedconfigurationsfordevice_update(
        connection,
        enterprise_id,
        user_id,
        device_id,
        managed_configuration_for_device_id,
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
      |> Request.url(
        "/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}",
        %{
          "enterpriseId" => URI.encode(enterprise_id, &URI.char_unreserved?/1),
          "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
          "deviceId" => URI.encode(device_id, &URI.char_unreserved?/1),
          "managedConfigurationForDeviceId" =>
            URI.encode(managed_configuration_for_device_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}]
    )
  end
end
