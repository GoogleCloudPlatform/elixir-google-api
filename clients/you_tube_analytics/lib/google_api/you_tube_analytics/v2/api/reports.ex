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

defmodule GoogleApi.YouTubeAnalytics.V2.Api.Reports do
  @moduledoc """
  API calls for all endpoints tagged `Reports`.
  """

  alias GoogleApi.YouTubeAnalytics.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieve your YouTube Analytics reports.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTubeAnalytics.V2.Connection.t`) - Connection to server
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
      *   `:currency` (*type:* `String.t`) - The currency to which financial metrics should be converted. The default is
          US Dollar (USD). If the result contains no financial metrics, this flag
          will be ignored. Responds with an error if the specified currency is not
          recognized.",
          pattern: [A-Z]{3}
      *   `:dimensions` (*type:* `String.t`) - A comma-separated list of YouTube Analytics dimensions, such as `views` or
          `ageGroup,gender`. See the [Available
          Reports](/youtube/analytics/v2/available_reports) document for a list of
          the reports that you can retrieve and the dimensions used for those
          reports. Also see the [Dimensions](/youtube/analytics/v2/dimsmets/dims)
          document for definitions of those dimensions."
          pattern: [0-9a-zA-Z,]+
      *   `:endDate` (*type:* `String.t`) - The end date for fetching YouTube Analytics data. The value should be in
          `YYYY-MM-DD` format.
          required: true, pattern: [0-9]{4}-[0-9]{2}-[0-9]{2}
      *   `:filters` (*type:* `String.t`) - A list of filters that should be applied when retrieving YouTube Analytics
          data. The [Available Reports](/youtube/analytics/v2/available_reports)
          document identifies the dimensions that can be used to filter each report,
          and the [Dimensions](/youtube/analytics/v2/dimsmets/dims)  document defines
          those dimensions. If a request uses multiple filters, join them together
          with a semicolon (`;`), and the returned result table will satisfy both
          filters. For example, a filters parameter value of
          `video==dMH0bHeiRNg;country==IT` restricts the result set to include data
          for the given video in Italy.",
      *   `:ids` (*type:* `String.t`) - Identifies the YouTube channel or content owner for which you are
          retrieving YouTube Analytics data.

          - To request data for a YouTube user, set the `ids` parameter value to
            `channel==CHANNEL_ID`, where `CHANNEL_ID` specifies the unique YouTube
            channel ID.
          - To request data for a YouTube CMS content owner, set the `ids` parameter
            value to `contentOwner==OWNER_NAME`, where `OWNER_NAME` is the CMS name
            of the content owner.
          required: true, pattern: [a-zA-Z]+==[a-zA-Z0-9_+-]+
      *   `:includeHistoricalChannelData` (*type:* `boolean()`) - If set to true historical data (i.e. channel data from before the linking
          of the channel to the content owner) will be retrieved.",
      *   `:maxResults` (*type:* `integer()`) - The maximum number of rows to include in the response.",
          minValue: 1
      *   `:metrics` (*type:* `String.t`) - A comma-separated list of YouTube Analytics metrics, such as `views` or
          `likes,dislikes`. See the
          [Available Reports](/youtube/analytics/v2/available_reports)  document for
          a list of the reports that you can retrieve and the metrics
          available in each report, and see the
          [Metrics](/youtube/analytics/v2/dimsmets/mets) document for definitions of
          those metrics.
          required: true, pattern: [0-9a-zA-Z,]+
      *   `:sort` (*type:* `String.t`) - A comma-separated list of dimensions or metrics that determine the sort
          order for YouTube Analytics data. By default the sort order is ascending.
          The '`-`' prefix causes descending sort order.",
          pattern: [-0-9a-zA-Z,]+
      *   `:startDate` (*type:* `String.t`) - The start date for fetching YouTube Analytics data. The value should be in
          `YYYY-MM-DD` format.
          required: true, pattern: "[0-9]{4}-[0-9]{2}-[0-9]{2}
      *   `:startIndex` (*type:* `integer()`) - An index of the first entity to retrieve. Use this parameter as a
          pagination mechanism along with the max-results parameter (one-based,
          inclusive).",
          minValue: 1
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTubeAnalytics.V2.Model.QueryResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtube_analytics_reports_query(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTubeAnalytics.V2.Model.QueryResponse.t()} | {:error, Tesla.Env.t()}
  def youtube_analytics_reports_query(connection, optional_params \\ [], opts \\ []) do
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
      :currency => :query,
      :dimensions => :query,
      :endDate => :query,
      :filters => :query,
      :ids => :query,
      :includeHistoricalChannelData => :query,
      :maxResults => :query,
      :metrics => :query,
      :sort => :query,
      :startDate => :query,
      :startIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/reports", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeAnalytics.V2.Model.QueryResponse{}])
  end
end
