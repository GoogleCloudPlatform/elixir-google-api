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

defmodule GoogleApi.Poly.V1.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias GoogleApi.Poly.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Lists assets authored by the given user. Only the value 'me', representing
  the currently-authenticated user, is supported. May include assets with an
  access level of PRIVATE or
  UNLISTED and assets which are
  All Rights Reserved for the
  currently-authenticated user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Poly.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - A valid user id. Currently, only the special value 'me', representing the
      currently-authenticated user is supported. To use 'me', you must pass
      an OAuth token with the request.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
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
      *   `:format` (*type:* `String.t`) - Return only assets with the matching format. Acceptable values are:
          `BLOCKS`, `FBX`, `GLTF`, `GLTF2`, `OBJ`, and `TILT`.
      *   `:orderBy` (*type:* `String.t`) - Specifies an ordering for assets. Acceptable values are:
          `BEST`, `NEWEST`, `OLDEST`. Defaults to `BEST`, which ranks assets
          based on a combination of popularity and other features.
      *   `:pageSize` (*type:* `integer()`) - The maximum number of assets to be returned. This value must be between `1`
          and `100`. Defaults to `20`.
      *   `:pageToken` (*type:* `String.t`) - Specifies a continuation token from a previous search whose results were
          split into multiple pages. To get the next page, submit the same request
          specifying the value from
          next_page_token.
      *   `:visibility` (*type:* `String.t`) - The visibility of the assets to be returned.
          Defaults to
          VISIBILITY_UNSPECIFIED
          which returns all assets.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Poly.V1.Model.ListUserAssetsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec poly_users_assets_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Poly.V1.Model.ListUserAssetsResponse.t()} | {:error, Tesla.Env.t()}
  def poly_users_assets_list(connection, name, optional_params \\ [], opts \\ []) do
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
      :format => :query,
      :orderBy => :query,
      :pageSize => :query,
      :pageToken => :query,
      :visibility => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}/assets", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Poly.V1.Model.ListUserAssetsResponse{}])
  end

  @doc """
  Lists assets that the user has liked. Only the value 'me', representing
  the currently-authenticated user, is supported. May include assets with an
  access level of UNLISTED.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Poly.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - A valid user id. Currently, only the special value 'me', representing the
      currently-authenticated user is supported. To use 'me', you must pass
      an OAuth token with the request.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
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
      *   `:format` (*type:* `String.t`) - Return only assets with the matching format. Acceptable values are:
          `BLOCKS`, `FBX`, `GLTF`, `GLTF2`, `OBJ`, `TILT`.
      *   `:orderBy` (*type:* `String.t`) - Specifies an ordering for assets. Acceptable values are:
          `BEST`, `NEWEST`, `OLDEST`, 'LIKED_TIME'. Defaults to `LIKED_TIME`, which
          ranks assets based on how recently they were liked.
      *   `:pageSize` (*type:* `integer()`) - The maximum number of assets to be returned. This value must be between `1`
          and `100`. Defaults to `20`.
      *   `:pageToken` (*type:* `String.t`) - Specifies a continuation token from a previous search whose results were
          split into multiple pages. To get the next page, submit the same request
          specifying the value from
          next_page_token.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Poly.V1.Model.ListLikedAssetsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec poly_users_likedassets_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Poly.V1.Model.ListLikedAssetsResponse.t()} | {:error, Tesla.Env.t()}
  def poly_users_likedassets_list(connection, name, optional_params \\ [], opts \\ []) do
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
      :format => :query,
      :orderBy => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}/likedassets", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Poly.V1.Model.ListLikedAssetsResponse{}])
  end
end
