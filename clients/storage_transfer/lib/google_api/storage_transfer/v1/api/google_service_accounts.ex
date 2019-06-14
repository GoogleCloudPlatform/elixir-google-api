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

defmodule GoogleApi.StorageTransfer.V1.Api.GoogleServiceAccounts do
  @moduledoc """
  API calls for all endpoints tagged `GoogleServiceAccounts`.
  """

  alias GoogleApi.StorageTransfer.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Returns the Google service account that is used by Storage Transfer
  Service to access buckets in the project where transfers
  run or in other projects. Each Google service account is associated
  with one Google Cloud Platform Console project. Users
  should add this service account to the Google Cloud Storage bucket
  ACLs to grant access to Storage Transfer Service. This service
  account is created and owned by Storage Transfer Service and can
  only be used by Storage Transfer Service.

  ## Parameters

  - connection (GoogleApi.StorageTransfer.V1.Connection): Connection to server
  - project_id (String.t): Required. The ID of the Google Cloud Platform Console project that the
  Google service account is associated with.
  - optional_params (keyword()): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. "media", "multipart").
    - :upload_protocol (String.t): Upload protocol for media (e.g. "raw", "multipart").

  ## Returns

  {:ok, %GoogleApi.StorageTransfer.V1.Model.GoogleServiceAccount{}} on success
  {:error, info} on failure
  """
  @spec storagetransfer_google_service_accounts_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.StorageTransfer.V1.Model.GoogleServiceAccount.t()}
          | {:error, Tesla.Env.t()}
  def storagetransfer_google_service_accounts_get(
        connection,
        project_id,
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
      |> Request.url("/v1/googleServiceAccounts/{projectId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.StorageTransfer.V1.Model.GoogleServiceAccount{}]
    )
  end
end
