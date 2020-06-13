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

defmodule GoogleApi.HomeGraph.V1.Api.Devices do
  @moduledoc """
  API calls for all endpoints tagged `Devices`.
  """

  alias GoogleApi.HomeGraph.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets the current states in Home Graph for the given set of the third-party
  user's devices.

  The third-party user's identity is passed in via the `agent_user_id`
  (see QueryRequest).
  This request must be authorized using service account credentials from your
  Actions console project.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.HomeGraph.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.HomeGraph.V1.Model.QueryRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.HomeGraph.V1.Model.QueryResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec homegraph_devices_query(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.HomeGraph.V1.Model.QueryResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def homegraph_devices_query(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/devices:query", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.HomeGraph.V1.Model.QueryResponse{}])
  end

  @doc """
  Reports device state and optionally sends device notifications.
  Called by your smart home Action when the state of a third-party device
  changes or you need to send a notification about the device.
  See [Implement Report
  State](https://developers.google.com/assistant/smarthome/develop/report-state)
  for more information.

  This method updates the device state according to its declared
  [traits](https://developers.google.com/assistant/smarthome/concepts/devices-traits).
  Publishing a new state value outside of these traits will result in an
  `INVALID_ARGUMENT` error response.

  The third-party user's identity is passed in via the `agent_user_id`
  (see ReportStateAndNotificationRequest).
  This request must be authorized using service account credentials from your
  Actions console project.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.HomeGraph.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.HomeGraph.V1.Model.ReportStateAndNotificationRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.HomeGraph.V1.Model.ReportStateAndNotificationResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec homegraph_devices_report_state_and_notification(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.HomeGraph.V1.Model.ReportStateAndNotificationResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def homegraph_devices_report_state_and_notification(
        connection,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/devices:reportStateAndNotification", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.HomeGraph.V1.Model.ReportStateAndNotificationResponse{}]
    )
  end

  @doc """
  Requests Google to send an `action.devices.SYNC`
  [intent](https://developers.google.com/assistant/smarthome/reference/intent/sync)
  to your smart home Action to update device metadata for the given user.


  The third-party user's identity is passed via the `agent_user_id`
  (see RequestSyncDevicesRequest).
  This request must be authorized using service account credentials from your
  Actions console project.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.HomeGraph.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.HomeGraph.V1.Model.RequestSyncDevicesRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.HomeGraph.V1.Model.RequestSyncDevicesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec homegraph_devices_request_sync(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.HomeGraph.V1.Model.RequestSyncDevicesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def homegraph_devices_request_sync(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/devices:requestSync", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.HomeGraph.V1.Model.RequestSyncDevicesResponse{}]
    )
  end

  @doc """
  Gets all the devices associated with the given third-party user.

  The third-party user's identity is passed in via the `agent_user_id`
  (see SyncRequest).
  This request must be authorized using service account credentials from your
  Actions console project.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.HomeGraph.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.HomeGraph.V1.Model.SyncRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.HomeGraph.V1.Model.SyncResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec homegraph_devices_sync(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.HomeGraph.V1.Model.SyncResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def homegraph_devices_sync(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/devices:sync", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.HomeGraph.V1.Model.SyncResponse{}])
  end
end
