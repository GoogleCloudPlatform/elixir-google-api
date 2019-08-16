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

defmodule GoogleApi.Admin.Reports_v1.Api.UserUsageReport do
  @moduledoc """
  API calls for all endpoints tagged `UserUsageReport`.
  """

  alias GoogleApi.Admin.Reports_v1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves a report which is a collection of properties / statistics for a set of users.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Reports_v1.Connection.t`) - Connection to server
  *   `user_key` (*type:* `String.t`) - Represents the profile id or the user email for which the data should be filtered.
  *   `date` (*type:* `String.t`) - Represents the date in yyyy-mm-dd format for which the data is to be fetched.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:customerId` (*type:* `String.t`) - Represents the customer for which the data is to be fetched.
      *   `:filters` (*type:* `String.t`) - Represents the set of filters including parameter operator value.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return. Maximum allowed is 1000
      *   `:orgUnitID` (*type:* `String.t`) - the organizational unit's ID to filter usage parameters from users belonging to a specific OU or one of its sub-OU(s).
      *   `:pageToken` (*type:* `String.t`) - Token to specify next page.
      *   `:parameters` (*type:* `String.t`) - Represents the application name, parameter name pairs to fetch in csv as app_name1:param_name1, app_name2:param_name2.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Reports_v1.Model.UsageReports{}}` on success
  *   `{:error, info}` on failure
  """
  @spec reports_user_usage_report_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Admin.Reports_v1.Model.UsageReports.t()} | {:error, Tesla.Env.t()}
  def reports_user_usage_report_get(connection, user_key, date, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :customerId => :query,
      :filters => :query,
      :maxResults => :query,
      :orgUnitID => :query,
      :pageToken => :query,
      :parameters => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/usage/users/{userKey}/dates/{date}", %{
        "userKey" => URI.encode(user_key, &URI.char_unreserved?/1),
        "date" => URI.encode(date, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Reports_v1.Model.UsageReports{}])
  end
end
