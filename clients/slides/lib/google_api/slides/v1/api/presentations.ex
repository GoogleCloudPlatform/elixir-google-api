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

defmodule GoogleApi.Slides.V1.Api.Presentations do
  @moduledoc """
  API calls for all endpoints tagged `Presentations`.
  """

  alias GoogleApi.Slides.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Applies one or more updates to the presentation.

  Each request is validated before
  being applied. If any request is not valid, then the entire request will
  fail and nothing will be applied.

  Some requests have replies to
  give you some information about how they are applied. Other requests do
  not need to return information; these each return an empty reply.
  The order of replies matches that of the requests.

  For example, suppose you call batchUpdate with four updates, and only the
  third one returns information. The response would have two empty replies:
  the reply to the third request, and another empty reply, in that order.

  Because other users may be editing the presentation, the presentation
  might not exactly reflect your changes: your changes may
  be altered with respect to collaborator changes. If there are no
  collaborators, the presentation should reflect your changes. In any case,
  the updates in your request are guaranteed to be applied together
  atomically.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Slides.V1.Connection.t`) - Connection to server
  *   `presentation_id` (*type:* `String.t`) - The presentation to apply the updates to.
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
      *   `:body` (*type:* `GoogleApi.Slides.V1.Model.BatchUpdatePresentationRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Slides.V1.Model.BatchUpdatePresentationResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec slides_presentations_batch_update(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Slides.V1.Model.BatchUpdatePresentationResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def slides_presentations_batch_update(
        connection,
        presentation_id,
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
      |> Request.url("/v1/presentations/{presentationId}:batchUpdate", %{
        "presentationId" => URI.encode(presentation_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Slides.V1.Model.BatchUpdatePresentationResponse{}]
    )
  end

  @doc """
  Creates a blank presentation using the title given in the request. If a
  `presentationId` is provided, it is used as the ID of the new presentation.
  Otherwise, a new ID is generated. Other fields in the request, including
  any provided content, are ignored.
  Returns the created presentation.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Slides.V1.Connection.t`) - Connection to server
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
      *   `:body` (*type:* `GoogleApi.Slides.V1.Model.Presentation.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Slides.V1.Model.Presentation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec slides_presentations_create(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Slides.V1.Model.Presentation.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def slides_presentations_create(connection, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/presentations", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Slides.V1.Model.Presentation{}])
  end

  @doc """
  Gets the latest version of the specified presentation.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Slides.V1.Connection.t`) - Connection to server
  *   `presentation_id` (*type:* `String.t`) - The ID of the presentation to retrieve.
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

  *   `{:ok, %GoogleApi.Slides.V1.Model.Presentation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec slides_presentations_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Slides.V1.Model.Presentation.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def slides_presentations_get(connection, presentation_id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:get)
      |> Request.url("/v1/presentations/{+presentationId}", %{
        "presentationId" => URI.encode(presentation_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Slides.V1.Model.Presentation{}])
  end

  @doc """
  Gets the latest version of the specified page in the presentation.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Slides.V1.Connection.t`) - Connection to server
  *   `presentation_id` (*type:* `String.t`) - The ID of the presentation to retrieve.
  *   `page_object_id` (*type:* `String.t`) - The object ID of the page to retrieve.
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

  *   `{:ok, %GoogleApi.Slides.V1.Model.Page{}}` on success
  *   `{:error, info}` on failure
  """
  @spec slides_presentations_pages_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Slides.V1.Model.Page.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def slides_presentations_pages_get(
        connection,
        presentation_id,
        page_object_id,
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
      |> Request.method(:get)
      |> Request.url("/v1/presentations/{presentationId}/pages/{pageObjectId}", %{
        "presentationId" => URI.encode(presentation_id, &URI.char_unreserved?/1),
        "pageObjectId" => URI.encode(page_object_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Slides.V1.Model.Page{}])
  end

  @doc """
  Generates a thumbnail of the latest version of the specified page in the
  presentation and returns a URL to the thumbnail image.

  This request counts as an [expensive read request](/slides/limits) for
  quota purposes.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Slides.V1.Connection.t`) - Connection to server
  *   `presentation_id` (*type:* `String.t`) - The ID of the presentation to retrieve.
  *   `page_object_id` (*type:* `String.t`) - The object ID of the page whose thumbnail to retrieve.
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
      *   `:"thumbnailProperties.mimeType"` (*type:* `String.t`) - The optional mime type of the thumbnail image.

          If you don't specify the mime type, the mime type defaults to PNG.
      *   `:"thumbnailProperties.thumbnailSize"` (*type:* `String.t`) - The optional thumbnail image size.

          If you don't specify the size, the server chooses a default size of the
          image.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Slides.V1.Model.Thumbnail{}}` on success
  *   `{:error, info}` on failure
  """
  @spec slides_presentations_pages_get_thumbnail(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Slides.V1.Model.Thumbnail.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def slides_presentations_pages_get_thumbnail(
        connection,
        presentation_id,
        page_object_id,
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
      :"thumbnailProperties.mimeType" => :query,
      :"thumbnailProperties.thumbnailSize" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/presentations/{presentationId}/pages/{pageObjectId}/thumbnail", %{
        "presentationId" => URI.encode(presentation_id, &URI.char_unreserved?/1),
        "pageObjectId" => URI.encode(page_object_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Slides.V1.Model.Thumbnail{}])
  end
end
