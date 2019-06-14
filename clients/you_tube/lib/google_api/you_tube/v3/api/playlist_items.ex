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

defmodule GoogleApi.YouTube.V3.Api.PlaylistItems do
  @moduledoc """
  API calls for all endpoints tagged `PlaylistItems`.
  """

  alias GoogleApi.YouTube.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes a playlist item.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - id (String.t): The id parameter specifies the YouTube playlist item ID for the playlist item that is being deleted. In a playlistItem resource, the id property specifies the playlist item's ID.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec youtube_playlist_items_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def youtube_playlist_items_delete(connection, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOfContentOwner => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/youtube/v3/playlistItems", %{})
      |> Request.add_param(:query, :id, id)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Adds a resource to a playlist.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :body (GoogleApi.YouTube.V3.Model.PlaylistItem.t): 

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.PlaylistItem{}} on success
  {:error, info} on failure
  """
  @spec youtube_playlist_items_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.PlaylistItem.t()} | {:error, Tesla.Env.t()}
  def youtube_playlist_items_insert(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOfContentOwner => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/youtube/v3/playlistItems", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.PlaylistItem{}])
  end

  @doc """
  Returns a collection of playlist items that match the API request parameters. You can retrieve all of the playlist items in a specified playlist or retrieve one or more playlist items by their unique IDs.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter specifies a comma-separated list of one or more playlistItem resource properties that the API response will include.

  If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a playlistItem resource, the snippet property contains numerous fields, including the title, description, position, and resourceId properties. As such, if you set part=snippet, the API response will contain all of those properties.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :id (String.t): The id parameter specifies a comma-separated list of one or more unique playlist item IDs.
    - :maxResults (integer()): The maxResults parameter specifies the maximum number of items that should be returned in the result set.
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :pageToken (String.t): The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
    - :playlistId (String.t): The playlistId parameter specifies the unique ID of the playlist for which you want to retrieve playlist items. Note that even though this is an optional parameter, every request to retrieve playlist items must specify a value for either the id parameter or the playlistId parameter.
    - :videoId (String.t): The videoId parameter specifies that the request should return only the playlist items that contain the specified video.

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.PlaylistItemListResponse{}} on success
  {:error, info} on failure
  """
  @spec youtube_playlist_items_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.PlaylistItemListResponse.t()} | {:error, Tesla.Env.t()}
  def youtube_playlist_items_list(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :id => :query,
      :maxResults => :query,
      :onBehalfOfContentOwner => :query,
      :pageToken => :query,
      :playlistId => :query,
      :videoId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/youtube/v3/playlistItems", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.PlaylistItemListResponse{}])
  end

  @doc """
  Modifies a playlist item. For example, you could update the item's position in the playlist.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

  Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a playlist item can specify a start time and end time, which identify the times portion of the video that should play when users watch the video in the playlist. If your request is updating a playlist item that sets these values, and the request's part parameter value includes the contentDetails part, the playlist item's start and end times will be updated to whatever value the request body specifies. If the request body does not specify values, the existing start and end times will be removed and replaced with the default settings.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :body (GoogleApi.YouTube.V3.Model.PlaylistItem.t): 

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.PlaylistItem{}} on success
  {:error, info} on failure
  """
  @spec youtube_playlist_items_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.PlaylistItem.t()} | {:error, Tesla.Env.t()}
  def youtube_playlist_items_update(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOfContentOwner => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/youtube/v3/playlistItems", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.PlaylistItem{}])
  end
end
