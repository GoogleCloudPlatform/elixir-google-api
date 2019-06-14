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

defmodule GoogleApi.Analytics.V3.Api.Metadata do
  @moduledoc """
  API calls for all endpoints tagged `Metadata`.
  """

  alias GoogleApi.Analytics.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Lists all columns for a report type

  ## Parameters

  - connection (GoogleApi.Analytics.V3.Connection): Connection to server
  - report_type (String.t): Report type. Allowed Values: 'ga'. Where 'ga' corresponds to the Core Reporting API
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Analytics.V3.Model.Columns{}} on success
  {:error, info} on failure
  """
  @spec analytics_metadata_columns_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Analytics.V3.Model.Columns.t()} | {:error, Tesla.Env.t()}
  def analytics_metadata_columns_list(connection, report_type, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/analytics/v3/metadata/{reportType}/columns", %{
        "reportType" => URI.encode(report_type, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Analytics.V3.Model.Columns{}])
  end
end
