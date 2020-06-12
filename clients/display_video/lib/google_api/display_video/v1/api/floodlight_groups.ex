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

defmodule GoogleApi.DisplayVideo.V1.Api.FloodlightGroups do
  @moduledoc """
  API calls for all endpoints tagged `FloodlightGroups`.
  """

  alias GoogleApi.DisplayVideo.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets a Floodlight group.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DisplayVideo.V1.Connection.t`) - Connection to server
  *   `floodlight_group_id` (*type:* `String.t`) - Required. The ID of the Floodlight group to fetch.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:partnerId` (*type:* `String.t`) - Required. The partner context by which the Floodlight group is being accessed.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DisplayVideo.V1.Model.FloodlightGroup{}}` on success
  *   `{:error, info}` on failure
  """
  @spec displayvideo_floodlight_groups_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DisplayVideo.V1.Model.FloodlightGroup.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def displayvideo_floodlight_groups_get(
        connection,
        floodlight_group_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :partnerId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/floodlightGroups/{+floodlightGroupId}", %{
        "floodlightGroupId" => URI.encode(floodlight_group_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DisplayVideo.V1.Model.FloodlightGroup{}])
  end

  @doc """
  Updates an existing Floodlight group.
  Returns the updated Floodlight group if successful.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DisplayVideo.V1.Connection.t`) - Connection to server
  *   `floodlight_group_id` (*type:* `String.t`) - Output only. The unique ID of the Floodlight group. Assigned by the system.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:partnerId` (*type:* `String.t`) - Required. The partner context by which the Floodlight group is being accessed.
      *   `:updateMask` (*type:* `String.t`) - Required. The mask to control which fields to update.
      *   `:body` (*type:* `GoogleApi.DisplayVideo.V1.Model.FloodlightGroup.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DisplayVideo.V1.Model.FloodlightGroup{}}` on success
  *   `{:error, info}` on failure
  """
  @spec displayvideo_floodlight_groups_patch(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DisplayVideo.V1.Model.FloodlightGroup.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def displayvideo_floodlight_groups_patch(
        connection,
        floodlight_group_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :partnerId => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/floodlightGroups/{floodlightGroupId}", %{
        "floodlightGroupId" => URI.encode(floodlight_group_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DisplayVideo.V1.Model.FloodlightGroup{}])
  end
end
