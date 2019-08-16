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

defmodule GoogleApi.AndroidEnterprise.V1.Api.Devices do
  @moduledoc """
  API calls for all endpoints tagged `Devices`.
  """

  alias GoogleApi.AndroidEnterprise.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Uploads a report containing any changes in app states on the device since the last report was generated. You can call this method up to 3 times every 24 hours for a given device.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidEnterprise.V1.Connection.t`) - Connection to server
  *   `enterprise_id` (*type:* `String.t`) - The ID of the enterprise.
  *   `user_id` (*type:* `String.t`) - The ID of the user.
  *   `device_id` (*type:* `String.t`) - The ID of the device.
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
  @spec androidenterprise_devices_force_report_upload(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def androidenterprise_devices_force_report_upload(
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
      |> Request.method(:post)
      |> Request.url(
        "/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/forceReportUpload",
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
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves the details of a device.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidEnterprise.V1.Connection.t`) - Connection to server
  *   `enterprise_id` (*type:* `String.t`) - The ID of the enterprise.
  *   `user_id` (*type:* `String.t`) - The ID of the user.
  *   `device_id` (*type:* `String.t`) - The ID of the device.
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

  *   `{:ok, %GoogleApi.AndroidEnterprise.V1.Model.Device{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidenterprise_devices_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.Device.t()} | {:error, Tesla.Env.t()}
  def androidenterprise_devices_get(
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
      |> Request.url("/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}", %{
        "enterpriseId" => URI.encode(enterprise_id, &URI.char_unreserved?/1),
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "deviceId" => URI.encode(device_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.Device{}])
  end

  @doc """
  Retrieves whether a device's access to Google services is enabled or disabled. The device state takes effect only if enforcing EMM policies on Android devices is enabled in the Google Admin Console. Otherwise, the device state is ignored and all devices are allowed access to Google services. This is only supported for Google-managed users.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidEnterprise.V1.Connection.t`) - Connection to server
  *   `enterprise_id` (*type:* `String.t`) - The ID of the enterprise.
  *   `user_id` (*type:* `String.t`) - The ID of the user.
  *   `device_id` (*type:* `String.t`) - The ID of the device.
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

  *   `{:ok, %GoogleApi.AndroidEnterprise.V1.Model.DeviceState{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidenterprise_devices_get_state(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.DeviceState.t()} | {:error, Tesla.Env.t()}
  def androidenterprise_devices_get_state(
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
      |> Request.url("/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state", %{
        "enterpriseId" => URI.encode(enterprise_id, &URI.char_unreserved?/1),
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "deviceId" => URI.encode(device_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.DeviceState{}])
  end

  @doc """
  Retrieves the IDs of all of a user's devices.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidEnterprise.V1.Connection.t`) - Connection to server
  *   `enterprise_id` (*type:* `String.t`) - The ID of the enterprise.
  *   `user_id` (*type:* `String.t`) - The ID of the user.
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

  *   `{:ok, %GoogleApi.AndroidEnterprise.V1.Model.DevicesListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidenterprise_devices_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.DevicesListResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_devices_list(
        connection,
        enterprise_id,
        user_id,
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
      |> Request.url("/enterprises/{enterpriseId}/users/{userId}/devices", %{
        "enterpriseId" => URI.encode(enterprise_id, &URI.char_unreserved?/1),
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.DevicesListResponse{}]
    )
  end

  @doc """
  Updates the device policy. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidEnterprise.V1.Connection.t`) - Connection to server
  *   `enterprise_id` (*type:* `String.t`) - The ID of the enterprise.
  *   `user_id` (*type:* `String.t`) - The ID of the user.
  *   `device_id` (*type:* `String.t`) - The ID of the device.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:updateMask` (*type:* `String.t`) - Mask that identifies which fields to update. If not set, all modifiable fields will be modified.

          When set in a query parameter, this field should be specified as updateMask=<field1>,<field2>,...
      *   `:body` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.Device.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidEnterprise.V1.Model.Device{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidenterprise_devices_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.Device.t()} | {:error, Tesla.Env.t()}
  def androidenterprise_devices_patch(
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
      :userIp => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}", %{
        "enterpriseId" => URI.encode(enterprise_id, &URI.char_unreserved?/1),
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "deviceId" => URI.encode(device_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.Device{}])
  end

  @doc """
  Sets whether a device's access to Google services is enabled or disabled. The device state takes effect only if enforcing EMM policies on Android devices is enabled in the Google Admin Console. Otherwise, the device state is ignored and all devices are allowed access to Google services. This is only supported for Google-managed users.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidEnterprise.V1.Connection.t`) - Connection to server
  *   `enterprise_id` (*type:* `String.t`) - The ID of the enterprise.
  *   `user_id` (*type:* `String.t`) - The ID of the user.
  *   `device_id` (*type:* `String.t`) - The ID of the device.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.DeviceState.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidEnterprise.V1.Model.DeviceState{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidenterprise_devices_set_state(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.DeviceState.t()} | {:error, Tesla.Env.t()}
  def androidenterprise_devices_set_state(
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
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state", %{
        "enterpriseId" => URI.encode(enterprise_id, &URI.char_unreserved?/1),
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "deviceId" => URI.encode(device_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.DeviceState{}])
  end

  @doc """
  Updates the device policy

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidEnterprise.V1.Connection.t`) - Connection to server
  *   `enterprise_id` (*type:* `String.t`) - The ID of the enterprise.
  *   `user_id` (*type:* `String.t`) - The ID of the user.
  *   `device_id` (*type:* `String.t`) - The ID of the device.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:updateMask` (*type:* `String.t`) - Mask that identifies which fields to update. If not set, all modifiable fields will be modified.

          When set in a query parameter, this field should be specified as updateMask=<field1>,<field2>,...
      *   `:body` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.Device.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidEnterprise.V1.Model.Device{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidenterprise_devices_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.Device.t()} | {:error, Tesla.Env.t()}
  def androidenterprise_devices_update(
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
      :userIp => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}", %{
        "enterpriseId" => URI.encode(enterprise_id, &URI.char_unreserved?/1),
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "deviceId" => URI.encode(device_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.Device{}])
  end
end
