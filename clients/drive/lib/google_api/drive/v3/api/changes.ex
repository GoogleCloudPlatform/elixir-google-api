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

defmodule GoogleApi.Drive.V3.Api.Changes do
  @moduledoc """
  API calls for all endpoints tagged `Changes`.
  """

  alias GoogleApi.Drive.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets the starting pageToken for listing future changes.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:driveId` (*type:* `String.t`) - The ID of the shared drive for which the starting pageToken for listing future changes from that shared drive will be returned.
      *   `:supportsAllDrives` (*type:* `boolean()`) - Deprecated - Whether the requesting application supports both My Drives and shared drives. This parameter will only be effective until June 1, 2020. Afterwards all applications are assumed to support shared drives.
      *   `:supportsTeamDrives` (*type:* `boolean()`) - Deprecated use supportsAllDrives instead.
      *   `:teamDriveId` (*type:* `String.t`) - Deprecated use driveId instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.StartPageToken{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_changes_get_start_page_token(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.StartPageToken.t()} | {:error, Tesla.Env.t()}
  def drive_changes_get_start_page_token(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :driveId => :query,
      :supportsAllDrives => :query,
      :supportsTeamDrives => :query,
      :teamDriveId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/drive/v3/changes/startPageToken", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.StartPageToken{}])
  end

  @doc """
  Lists the changes for a user or shared drive.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `page_token` (*type:* `String.t`) - The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response or to the response from the getStartPageToken method.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:driveId` (*type:* `String.t`) - The shared drive from which changes will be returned. If specified the change IDs will be reflective of the shared drive; use the combined drive ID and change ID as an identifier.
      *   `:includeCorpusRemovals` (*type:* `boolean()`) - Whether changes should include the file resource if the file is still accessible by the user at the time of the request, even when a file was removed from the list of changes and there will be no further change entries for this file.
      *   `:includeItemsFromAllDrives` (*type:* `boolean()`) - Deprecated - Whether both My Drive and shared drive items should be included in results. This parameter will only be effective until June 1, 2020. Afterwards shared drive items will be included in the results.
      *   `:includeRemoved` (*type:* `boolean()`) - Whether to include changes indicating that items have been removed from the list of changes, for example by deletion or loss of access.
      *   `:includeTeamDriveItems` (*type:* `boolean()`) - Deprecated use includeItemsFromAllDrives instead.
      *   `:pageSize` (*type:* `integer()`) - The maximum number of changes to return per page.
      *   `:restrictToMyDrive` (*type:* `boolean()`) - Whether to restrict the results to changes inside the My Drive hierarchy. This omits changes to files such as those in the Application Data folder or shared files which have not been added to My Drive.
      *   `:spaces` (*type:* `String.t`) - A comma-separated list of spaces to query within the user corpus. Supported values are 'drive', 'appDataFolder' and 'photos'.
      *   `:supportsAllDrives` (*type:* `boolean()`) - Deprecated - Whether the requesting application supports both My Drives and shared drives. This parameter will only be effective until June 1, 2020. Afterwards all applications are assumed to support shared drives.
      *   `:supportsTeamDrives` (*type:* `boolean()`) - Deprecated use supportsAllDrives instead.
      *   `:teamDriveId` (*type:* `String.t`) - Deprecated use driveId instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.ChangeList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_changes_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.ChangeList.t()} | {:error, Tesla.Env.t()}
  def drive_changes_list(connection, page_token, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :driveId => :query,
      :includeCorpusRemovals => :query,
      :includeItemsFromAllDrives => :query,
      :includeRemoved => :query,
      :includeTeamDriveItems => :query,
      :pageSize => :query,
      :restrictToMyDrive => :query,
      :spaces => :query,
      :supportsAllDrives => :query,
      :supportsTeamDrives => :query,
      :teamDriveId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/drive/v3/changes", %{})
      |> Request.add_param(:query, :pageToken, page_token)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.ChangeList{}])
  end

  @doc """
  Subscribes to changes for a user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `page_token` (*type:* `String.t`) - The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response or to the response from the getStartPageToken method.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:driveId` (*type:* `String.t`) - The shared drive from which changes will be returned. If specified the change IDs will be reflective of the shared drive; use the combined drive ID and change ID as an identifier.
      *   `:includeCorpusRemovals` (*type:* `boolean()`) - Whether changes should include the file resource if the file is still accessible by the user at the time of the request, even when a file was removed from the list of changes and there will be no further change entries for this file.
      *   `:includeItemsFromAllDrives` (*type:* `boolean()`) - Deprecated - Whether both My Drive and shared drive items should be included in results. This parameter will only be effective until June 1, 2020. Afterwards shared drive items will be included in the results.
      *   `:includeRemoved` (*type:* `boolean()`) - Whether to include changes indicating that items have been removed from the list of changes, for example by deletion or loss of access.
      *   `:includeTeamDriveItems` (*type:* `boolean()`) - Deprecated use includeItemsFromAllDrives instead.
      *   `:pageSize` (*type:* `integer()`) - The maximum number of changes to return per page.
      *   `:restrictToMyDrive` (*type:* `boolean()`) - Whether to restrict the results to changes inside the My Drive hierarchy. This omits changes to files such as those in the Application Data folder or shared files which have not been added to My Drive.
      *   `:spaces` (*type:* `String.t`) - A comma-separated list of spaces to query within the user corpus. Supported values are 'drive', 'appDataFolder' and 'photos'.
      *   `:supportsAllDrives` (*type:* `boolean()`) - Deprecated - Whether the requesting application supports both My Drives and shared drives. This parameter will only be effective until June 1, 2020. Afterwards all applications are assumed to support shared drives.
      *   `:supportsTeamDrives` (*type:* `boolean()`) - Deprecated use supportsAllDrives instead.
      *   `:teamDriveId` (*type:* `String.t`) - Deprecated use driveId instead.
      *   `:resource` (*type:* `GoogleApi.Drive.V3.Model.Channel.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.Channel{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_changes_watch(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Channel.t()} | {:error, Tesla.Env.t()}
  def drive_changes_watch(connection, page_token, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :driveId => :query,
      :includeCorpusRemovals => :query,
      :includeItemsFromAllDrives => :query,
      :includeRemoved => :query,
      :includeTeamDriveItems => :query,
      :pageSize => :query,
      :restrictToMyDrive => :query,
      :spaces => :query,
      :supportsAllDrives => :query,
      :supportsTeamDrives => :query,
      :teamDriveId => :query,
      :resource => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/drive/v3/changes/watch", %{})
      |> Request.add_param(:query, :pageToken, page_token)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Channel{}])
  end
end
