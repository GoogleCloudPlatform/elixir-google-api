# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.SQLAdmin.V1beta4.Api.Operations do
  @moduledoc """
  API calls for all endpoints tagged `Operations`.
  """

  alias GoogleApi.SQLAdmin.V1beta4.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves an instance operation that has been performed on an instance.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String.t): Project ID of the project that contains the instance.
  - operation (String.t): Instance operation ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_operations_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def sql_operations_get(connection, project, operation, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/projects/{project}/operations/{operation}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "operation" => URI.encode(operation, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}])
  end

  @doc """
  Lists all instance operations that have been performed on the given Cloud SQL instance in the reverse chronological order of the start time.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String.t): Project ID of the project that contains the instance.
  - instance (String.t): Cloud SQL instance ID. This does not include the project ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): Maximum number of operations per response.
    - :pageToken (String.t): A previously-returned page token representing part of the larger set of results to view.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.OperationsListResponse{}} on success
  {:error, info} on failure
  """
  @spec sql_operations_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.OperationsListResponse.t()}
          | {:error, Tesla.Env.t()}
  def sql_operations_list(connection, project, instance, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/projects/{project}/operations", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :instance, instance)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.OperationsListResponse{}]
    )
  end
end
