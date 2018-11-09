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

defmodule GoogleApi.AnalyticsReporting.V4.Api.Reports do
  @moduledoc """
  API calls for all endpoints tagged `Reports`.
  """

  alias GoogleApi.AnalyticsReporting.V4.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Returns the Analytics data.

  ## Parameters

  - connection (GoogleApi.AnalyticsReporting.V4.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :body (GetReportsRequest): 

  ## Returns

  {:ok, %GoogleApi.AnalyticsReporting.V4.Model.GetReportsResponse{}} on success
  {:error, info} on failure
  """
  @spec analyticsreporting_reports_batch_get(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.AnalyticsReporting.V4.Model.GetReportsResponse.t()}
          | {:error, Tesla.Env.t()}
  def analyticsreporting_reports_batch_get(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v4/reports:batchGet")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AnalyticsReporting.V4.Model.GetReportsResponse{}]
    )
  end
end
