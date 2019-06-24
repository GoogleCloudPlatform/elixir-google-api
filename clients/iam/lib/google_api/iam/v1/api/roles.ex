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

defmodule GoogleApi.IAM.V1.Api.Roles do
  @moduledoc """
  API calls for all endpoints tagged `Roles`.
  """

  alias GoogleApi.IAM.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets a Role definition.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.IAM.V1.Connection.t`) - Connection to server
  *   `roles_id` (*type:* `String.t`) - Part of `name`. The resource name of the role in one of the following formats:
      `roles/{ROLE_NAME}`
      `organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}`
      `projects/{PROJECT_ID}/roles/{ROLE_NAME}`
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.IAM.V1.Model.Role{}}` on success
  *   `{:error, info}` on failure
  """
  @spec iam_roles_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def iam_roles_get(connection, roles_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/roles/{rolesId}", %{
        "rolesId" => URI.encode(roles_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.Role{}])
  end

  @doc """
  Lists the Roles defined on a resource.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.IAM.V1.Connection.t`) - Connection to server
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
      *   `:pageSize` (*type:* `integer()`) - Optional limit on the number of roles to include in the response.
      *   `:pageToken` (*type:* `String.t`) - Optional pagination token returned in an earlier ListRolesResponse.
      *   `:parent` (*type:* `String.t`) - The resource name of the parent resource in one of the following formats:
          `` (empty string) -- this refers to curated roles.
          `organizations/{ORGANIZATION_ID}`
          `projects/{PROJECT_ID}`
      *   `:showDeleted` (*type:* `boolean()`) - Include Roles that have been deleted.
      *   `:view` (*type:* `String.t`) - Optional view for the returned Role objects. When `FULL` is specified,
          the `includedPermissions` field is returned, which includes a list of all
          permissions in the role. The default value is `BASIC`, which does not
          return the `includedPermissions` field.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.IAM.V1.Model.ListRolesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec iam_roles_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.ListRolesResponse.t()} | {:error, Tesla.Env.t()}
  def iam_roles_list(connection, optional_params \\ [], opts \\ []) do
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
      :pageSize => :query,
      :pageToken => :query,
      :parent => :query,
      :showDeleted => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/roles", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.ListRolesResponse{}])
  end

  @doc """
  Queries roles that can be granted on a particular resource.
  A role is grantable if it can be used as the role in a binding for a policy
  for that resource.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.IAM.V1.Connection.t`) - Connection to server
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
      *   `:body` (*type:* `GoogleApi.IAM.V1.Model.QueryGrantableRolesRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.IAM.V1.Model.QueryGrantableRolesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec iam_roles_query_grantable_roles(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.QueryGrantableRolesResponse.t()} | {:error, Tesla.Env.t()}
  def iam_roles_query_grantable_roles(connection, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/roles:queryGrantableRoles", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.QueryGrantableRolesResponse{}])
  end
end
