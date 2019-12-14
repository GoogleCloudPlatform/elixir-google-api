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

defmodule GoogleApi.CloudSearch.V1.Api.Media do
  @moduledoc """
  API calls for all endpoints tagged `Media`.
  """

  alias GoogleApi.CloudSearch.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Uploads media for indexing.

  The upload endpoint supports direct and resumable upload protocols and
  is intended for large items that can not be
  [inlined during index requests](https://developers.google.com/cloud-search/docs/reference/rest/v1/indexing.datasources.items#itemcontent).
  To index large content:

  1. Call
     indexing.datasources.items.upload
     with the resource name to begin an upload session and retrieve the
     UploadItemRef.
  1. Call media.upload to upload the content using the same resource name from step 1.
  1. Call indexing.datasources.items.index
     to index the item. Populate the
     [ItemContent](/cloud-search/docs/reference/rest/v1/indexing.datasources.items#ItemContent)
     with the UploadItemRef from step 1.


  For additional information, see
  [Create a content connector using the REST API](https://developers.google.com/cloud-search/docs/guides/content-connector#rest).

    **Note:** This API requires a service account to execute.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSearch.V1.Connection.t`) - Connection to server
  *   `resource_name` (*type:* `String.t`) - Name of the media that is being downloaded.  See
      ReadRequest.resource_name.
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
      *   `:body` (*type:* `GoogleApi.CloudSearch.V1.Model.Media.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSearch.V1.Model.Media{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsearch_media_upload(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudSearch.V1.Model.Media.t()} | {:error, Tesla.Env.t()}
  def cloudsearch_media_upload(connection, resource_name, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/media/{+resourceName}", %{
        "resourceName" => URI.encode(resource_name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSearch.V1.Model.Media{}])
  end

  @doc """
  Uploads media for indexing.

  The upload endpoint supports direct and resumable upload protocols and
  is intended for large items that can not be
  [inlined during index requests](https://developers.google.com/cloud-search/docs/reference/rest/v1/indexing.datasources.items#itemcontent).
  To index large content:

  1. Call
     indexing.datasources.items.upload
     with the resource name to begin an upload session and retrieve the
     UploadItemRef.
  1. Call media.upload to upload the content using the same resource name from step 1.
  1. Call indexing.datasources.items.index
     to index the item. Populate the
     [ItemContent](/cloud-search/docs/reference/rest/v1/indexing.datasources.items#ItemContent)
     with the UploadItemRef from step 1.


  For additional information, see
  [Create a content connector using the REST API](https://developers.google.com/cloud-search/docs/guides/content-connector#rest).

    **Note:** This API requires a service account to execute.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSearch.V1.Connection.t`) - Connection to server
  *   `resource_name` (*type:* `String.t`) - Name of the media that is being downloaded.  See
      ReadRequest.resource_name.
  *   `upload_type` (*type:* `String.t`) - Upload type. Must be "multipart".
  *   `metadata` (*type:* `GoogleApi.CloudSearch.V1.Model.Media.t`) - object metadata
  *   `data` (*type:* `iodata`) - Content to upload, as a string or iolist
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSearch.V1.Model.Media{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsearch_media_upload_iodata(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          GoogleApi.CloudSearch.V1.Model.Media.t(),
          iodata,
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.CloudSearch.V1.Model.Media.t()} | {:error, Tesla.Env.t()}
  def cloudsearch_media_upload_iodata(
        connection,
        resource_name,
        upload_type,
        metadata,
        data,
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/v1/media/{+resourceName}", %{
        "resourceName" => URI.encode(resource_name, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:body, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSearch.V1.Model.Media{}])
  end

  @doc """
  Uploads media for indexing.

  The upload endpoint supports direct and resumable upload protocols and
  is intended for large items that can not be
  [inlined during index requests](https://developers.google.com/cloud-search/docs/reference/rest/v1/indexing.datasources.items#itemcontent).
  To index large content:

  1. Call
     indexing.datasources.items.upload
     with the resource name to begin an upload session and retrieve the
     UploadItemRef.
  1. Call media.upload to upload the content using the same resource name from step 1.
  1. Call indexing.datasources.items.index
     to index the item. Populate the
     [ItemContent](/cloud-search/docs/reference/rest/v1/indexing.datasources.items#ItemContent)
     with the UploadItemRef from step 1.


  For additional information, see
  [Create a content connector using the REST API](https://developers.google.com/cloud-search/docs/guides/content-connector#rest).

    **Note:** This API requires a service account to execute.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSearch.V1.Connection.t`) - Connection to server
  *   `resource_name` (*type:* `String.t`) - Name of the media that is being downloaded.  See
      ReadRequest.resource_name.
  *   `upload_type` (*type:* `String.t`) - Upload type. Must be "multipart".
  *   `metadata` (*type:* `GoogleApi.CloudSearch.V1.Model.Media.t`) - object metadata
  *   `data` (*type:* `String.t`) - Path to file containing content to upload
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSearch.V1.Model.Media{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsearch_media_upload_simple(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          GoogleApi.CloudSearch.V1.Model.Media.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.CloudSearch.V1.Model.Media.t()} | {:error, Tesla.Env.t()}
  def cloudsearch_media_upload_simple(
        connection,
        resource_name,
        upload_type,
        metadata,
        data,
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/v1/media/{+resourceName}", %{
        "resourceName" => URI.encode(resource_name, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:file, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSearch.V1.Model.Media{}])
  end
end
