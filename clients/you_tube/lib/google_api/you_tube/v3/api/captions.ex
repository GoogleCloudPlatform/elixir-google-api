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

defmodule GoogleApi.YouTube.V3.Api.Captions do
  @moduledoc """
  API calls for all endpoints tagged `Captions`.
  """

  alias GoogleApi.YouTube.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes a specified caption track.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - id (String.t): The id parameter identifies the caption track that is being deleted. The value is a caption track ID as identified by the id property in a caption resource.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOf (String.t): ID of the Google+ Page for the channel that the request is be on behalf of
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec youtube_captions_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def youtube_captions_delete(connection, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOf => :query,
      :onBehalfOfContentOwner => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/youtube/v3/captions", %{})
      |> Request.add_param(:query, :id, id)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Downloads a caption track. The caption track is returned in its original format unless the request specifies a value for the tfmt parameter and in its original language unless the request specifies a value for the tlang parameter.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - id (String.t): The id parameter identifies the caption track that is being retrieved. The value is a caption track ID as identified by the id property in a caption resource.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOf (String.t): ID of the Google+ Page for the channel that the request is be on behalf of
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :tfmt (String.t): The tfmt parameter specifies that the caption track should be returned in a specific format. If the parameter is not included in the request, the track is returned in its original format.
    - :tlang (String.t): The tlang parameter specifies that the API response should return a translation of the specified caption track. The parameter value is an ISO 639-1 two-letter language code that identifies the desired caption language. The translation is generated by using machine translation, such as Google Translate.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec youtube_captions_download(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def youtube_captions_download(connection, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOf => :query,
      :onBehalfOfContentOwner => :query,
      :tfmt => :query,
      :tlang => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/youtube/v3/captions/{id}", %{
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Uploads a caption track.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter specifies the caption resource parts that the API response will include. Set the parameter value to snippet.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOf (String.t): ID of the Google+ Page for the channel that the request is be on behalf of
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :sync (boolean()): The sync parameter indicates whether YouTube should automatically synchronize the caption file with the audio track of the video. If you set the value to true, YouTube will disregard any time codes that are in the uploaded caption file and generate new time codes for the captions.

  You should set the sync parameter to true if you are uploading a transcript, which has no time codes, or if you suspect the time codes in your file are incorrect and want YouTube to try to fix them.
    - :body (GoogleApi.YouTube.V3.Model.Caption.t): 

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.Caption{}} on success
  {:error, info} on failure
  """
  @spec youtube_captions_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.Caption.t()} | {:error, Tesla.Env.t()}
  def youtube_captions_insert(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOf => :query,
      :onBehalfOfContentOwner => :query,
      :sync => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/youtube/v3/captions", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.Caption{}])
  end

  @doc """
  Uploads a caption track.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter specifies the caption resource parts that the API response will include. Set the parameter value to snippet.
  - upload_type (String.t): Upload type. Must be "resumable".
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOf (String.t): ID of the Google+ Page for the channel that the request is be on behalf of
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :sync (boolean()): The sync parameter indicates whether YouTube should automatically synchronize the caption file with the audio track of the video. If you set the value to true, YouTube will disregard any time codes that are in the uploaded caption file and generate new time codes for the captions.

  You should set the sync parameter to true if you are uploading a transcript, which has no time codes, or if you suspect the time codes in your file are incorrect and want YouTube to try to fix them.
    - :body (GoogleApi.YouTube.V3.Model.Caption.t): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec youtube_captions_insert_resumable(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def youtube_captions_insert_resumable(
        connection,
        part,
        upload_type,
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
      :onBehalfOf => :query,
      :onBehalfOfContentOwner => :query,
      :sync => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/resumable/upload/youtube/v3/captions", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Uploads a caption track.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter specifies the caption resource parts that the API response will include. Set the parameter value to snippet.
  - upload_type (String.t): Upload type. Must be "multipart".
  - metadata (GoogleApi.YouTube.V3.Model.Caption.t): object metadata
  - data (String.t): Path to file
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOf (String.t): ID of the Google+ Page for the channel that the request is be on behalf of
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :sync (boolean()): The sync parameter indicates whether YouTube should automatically synchronize the caption file with the audio track of the video. If you set the value to true, YouTube will disregard any time codes that are in the uploaded caption file and generate new time codes for the captions.

  You should set the sync parameter to true if you are uploading a transcript, which has no time codes, or if you suspect the time codes in your file are incorrect and want YouTube to try to fix them.

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.Caption{}} on success
  {:error, info} on failure
  """
  @spec youtube_captions_insert_simple(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          GoogleApi.YouTube.V3.Model.Caption.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.YouTube.V3.Model.Caption.t()} | {:error, Tesla.Env.t()}
  def youtube_captions_insert_simple(
        connection,
        part,
        upload_type,
        metadata,
        data,
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
      :onBehalfOf => :query,
      :onBehalfOfContentOwner => :query,
      :sync => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/youtube/v3/captions", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:file, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.Caption{}])
  end

  @doc """
  Returns a list of caption tracks that are associated with a specified video. Note that the API response does not contain the actual captions and that the captions.download method provides the ability to retrieve a caption track.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter specifies a comma-separated list of one or more caption resource parts that the API response will include. The part names that you can include in the parameter value are id and snippet.
  - video_id (String.t): The videoId parameter specifies the YouTube video ID of the video for which the API should return caption tracks.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :id (String.t): The id parameter specifies a comma-separated list of IDs that identify the caption resources that should be retrieved. Each ID must identify a caption track associated with the specified video.
    - :onBehalfOf (String.t): ID of the Google+ Page for the channel that the request is on behalf of.
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.CaptionListResponse{}} on success
  {:error, info} on failure
  """
  @spec youtube_captions_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.CaptionListResponse.t()} | {:error, Tesla.Env.t()}
  def youtube_captions_list(connection, part, video_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :id => :query,
      :onBehalfOf => :query,
      :onBehalfOfContentOwner => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/youtube/v3/captions", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_param(:query, :videoId, video_id)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.CaptionListResponse{}])
  end

  @doc """
  Updates a caption track. When updating a caption track, you can change the track's draft status, upload a new caption file for the track, or both.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Set the property value to snippet if you are updating the track's draft status. Otherwise, set the property value to id.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOf (String.t): ID of the Google+ Page for the channel that the request is be on behalf of
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :sync (boolean()): Note: The API server only processes the parameter value if the request contains an updated caption file.

  The sync parameter indicates whether YouTube should automatically synchronize the caption file with the audio track of the video. If you set the value to true, YouTube will automatically synchronize the caption track with the audio track.
    - :body (GoogleApi.YouTube.V3.Model.Caption.t): 

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.Caption{}} on success
  {:error, info} on failure
  """
  @spec youtube_captions_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.Caption.t()} | {:error, Tesla.Env.t()}
  def youtube_captions_update(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOf => :query,
      :onBehalfOfContentOwner => :query,
      :sync => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/youtube/v3/captions", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.Caption{}])
  end

  @doc """
  Updates a caption track. When updating a caption track, you can change the track's draft status, upload a new caption file for the track, or both.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Set the property value to snippet if you are updating the track's draft status. Otherwise, set the property value to id.
  - upload_type (String.t): Upload type. Must be "resumable".
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOf (String.t): ID of the Google+ Page for the channel that the request is be on behalf of
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :sync (boolean()): Note: The API server only processes the parameter value if the request contains an updated caption file.

  The sync parameter indicates whether YouTube should automatically synchronize the caption file with the audio track of the video. If you set the value to true, YouTube will automatically synchronize the caption track with the audio track.
    - :body (GoogleApi.YouTube.V3.Model.Caption.t): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec youtube_captions_update_resumable(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def youtube_captions_update_resumable(
        connection,
        part,
        upload_type,
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
      :onBehalfOf => :query,
      :onBehalfOfContentOwner => :query,
      :sync => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/resumable/upload/youtube/v3/captions", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Updates a caption track. When updating a caption track, you can change the track's draft status, upload a new caption file for the track, or both.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Set the property value to snippet if you are updating the track's draft status. Otherwise, set the property value to id.
  - upload_type (String.t): Upload type. Must be "multipart".
  - metadata (GoogleApi.YouTube.V3.Model.Caption.t): object metadata
  - data (String.t): Path to file
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOf (String.t): ID of the Google+ Page for the channel that the request is be on behalf of
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.

  The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :sync (boolean()): Note: The API server only processes the parameter value if the request contains an updated caption file.

  The sync parameter indicates whether YouTube should automatically synchronize the caption file with the audio track of the video. If you set the value to true, YouTube will automatically synchronize the caption track with the audio track.

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.Caption{}} on success
  {:error, info} on failure
  """
  @spec youtube_captions_update_simple(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          GoogleApi.YouTube.V3.Model.Caption.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.YouTube.V3.Model.Caption.t()} | {:error, Tesla.Env.t()}
  def youtube_captions_update_simple(
        connection,
        part,
        upload_type,
        metadata,
        data,
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
      :onBehalfOf => :query,
      :onBehalfOfContentOwner => :query,
      :sync => :query
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/upload/youtube/v3/captions", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:file, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.Caption{}])
  end
end
