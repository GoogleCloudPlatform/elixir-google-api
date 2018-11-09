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

defmodule GoogleApi.CloudErrorReporting.V1beta1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.CloudErrorReporting.V1beta1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes all error events of a given project.

  ## Parameters

  - connection (GoogleApi.CloudErrorReporting.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;projectName&#x60;. [Required] The resource name of the Google Cloud Platform project. Written as &#x60;projects/&#x60; plus the [Google Cloud Platform project ID](https://support.google.com/cloud/answer/6158840). Example: &#x60;projects/my-project-123&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.

  ## Returns

  {:ok, %GoogleApi.CloudErrorReporting.V1beta1.Model.DeleteEventsResponse{}} on success
  {:error, info} on failure
  """
  @spec clouderrorreporting_projects_delete_events(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudErrorReporting.V1beta1.Model.DeleteEventsResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouderrorreporting_projects_delete_events(
        connection,
        projects_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1beta1/projects/{projectsId}/events", %{
        "projectsId" => URI.encode_www_form(projects_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudErrorReporting.V1beta1.Model.DeleteEventsResponse{}]
    )
  end

  @doc """
  Lists the specified events.

  ## Parameters

  - connection (GoogleApi.CloudErrorReporting.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;projectName&#x60;. [Required] The resource name of the Google Cloud Platform project. Written as &#x60;projects/&#x60; plus the [Google Cloud Platform project ID](https://support.google.com/cloud/answer/6158840). Example: &#x60;projects/my-project-123&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :serviceFilter.version (String.t): [Optional] The exact value to match against [&#x60;ServiceContext.version&#x60;](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.version).
    - :serviceFilter.resourceType (String.t): [Optional] The exact value to match against [&#x60;ServiceContext.resource_type&#x60;](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.resource_type).
    - :timeRange.period (String.t): Restricts the query to the specified time range.
    - :groupId (String.t): [Required] The group for which events shall be returned.
    - :pageToken (String.t): [Optional] A &#x60;next_page_token&#x60; provided by a previous response.
    - :serviceFilter.service (String.t): [Optional] The exact value to match against [&#x60;ServiceContext.service&#x60;](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.service).
    - :pageSize (integer()): [Optional] The maximum number of results to return per response.

  ## Returns

  {:ok, %GoogleApi.CloudErrorReporting.V1beta1.Model.ListEventsResponse{}} on success
  {:error, info} on failure
  """
  @spec clouderrorreporting_projects_events_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudErrorReporting.V1beta1.Model.ListEventsResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouderrorreporting_projects_events_list(
        connection,
        projects_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :"serviceFilter.version" => :query,
      :"serviceFilter.resourceType" => :query,
      :"timeRange.period" => :query,
      :groupId => :query,
      :pageToken => :query,
      :"serviceFilter.service" => :query,
      :pageSize => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1beta1/projects/{projectsId}/events", %{
        "projectsId" => URI.encode_www_form(projects_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudErrorReporting.V1beta1.Model.ListEventsResponse{}]
    )
  end

  @doc """
  Report an individual error event.  This endpoint accepts **either** an OAuth token, **or** an [API key](https://support.google.com/cloud/answer/6158862) for authentication. To use an API key, append it to the URL as the value of a &#x60;key&#x60; parameter. For example:  &#x60;POST https://clouderrorreporting.googleapis.com/v1beta1/projects/example-project/events:report?key&#x3D;123ABC456&#x60;

  ## Parameters

  - connection (GoogleApi.CloudErrorReporting.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;projectName&#x60;. [Required] The resource name of the Google Cloud Platform project. Written as &#x60;projects/&#x60; plus the [Google Cloud Platform project ID](https://support.google.com/cloud/answer/6158840). Example: &#x60;projects/my-project-123&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :body (ReportedErrorEvent): 

  ## Returns

  {:ok, %GoogleApi.CloudErrorReporting.V1beta1.Model.ReportErrorEventResponse{}} on success
  {:error, info} on failure
  """
  @spec clouderrorreporting_projects_events_report(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudErrorReporting.V1beta1.Model.ReportErrorEventResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouderrorreporting_projects_events_report(
        connection,
        projects_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1beta1/projects/{projectsId}/events:report", %{
        "projectsId" => URI.encode_www_form(projects_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudErrorReporting.V1beta1.Model.ReportErrorEventResponse{}]
    )
  end

  @doc """
  Lists the specified groups.

  ## Parameters

  - connection (GoogleApi.CloudErrorReporting.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;projectName&#x60;. [Required] The resource name of the Google Cloud Platform project. Written as &lt;code&gt;projects/&lt;/code&gt; plus the &lt;a href&#x3D;\&quot;https://support.google.com/cloud/answer/6158840\&quot;&gt;Google Cloud Platform project ID&lt;/a&gt;.  Example: &lt;code&gt;projects/my-project-123&lt;/code&gt;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :alignment (String.t): [Optional] The alignment of the timed counts to be returned. Default is &#x60;ALIGNMENT_EQUAL_AT_END&#x60;.
    - :groupId ([String.t]): [Optional] List all &lt;code&gt;ErrorGroupStats&lt;/code&gt; with these IDs.
    - :serviceFilter.service (String.t): [Optional] The exact value to match against [&#x60;ServiceContext.service&#x60;](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.service).
    - :pageSize (integer()): [Optional] The maximum number of results to return per response. Default is 20.
    - :serviceFilter.version (String.t): [Optional] The exact value to match against [&#x60;ServiceContext.version&#x60;](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.version).
    - :order (String.t): [Optional] The sort order in which the results are returned. Default is &#x60;COUNT_DESC&#x60;.
    - :serviceFilter.resourceType (String.t): [Optional] The exact value to match against [&#x60;ServiceContext.resource_type&#x60;](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.resource_type).
    - :alignmentTime (DateTime.t): [Optional] Time where the timed counts shall be aligned if rounded alignment is chosen. Default is 00:00 UTC.
    - :timedCountDuration (String.t): [Optional] The preferred duration for a single returned &#x60;TimedCount&#x60;. If not set, no timed counts are returned.
    - :pageToken (String.t): [Optional] A &#x60;next_page_token&#x60; provided by a previous response. To view additional results, pass this token along with the identical query parameters as the first request.
    - :timeRange.period (String.t): Restricts the query to the specified time range.

  ## Returns

  {:ok, %GoogleApi.CloudErrorReporting.V1beta1.Model.ListGroupStatsResponse{}} on success
  {:error, info} on failure
  """
  @spec clouderrorreporting_projects_group_stats_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudErrorReporting.V1beta1.Model.ListGroupStatsResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouderrorreporting_projects_group_stats_list(
        connection,
        projects_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :alignment => :query,
      :groupId => :query,
      :"serviceFilter.service" => :query,
      :pageSize => :query,
      :"serviceFilter.version" => :query,
      :order => :query,
      :"serviceFilter.resourceType" => :query,
      :alignmentTime => :query,
      :timedCountDuration => :query,
      :pageToken => :query,
      :"timeRange.period" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1beta1/projects/{projectsId}/groupStats", %{
        "projectsId" => URI.encode_www_form(projects_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudErrorReporting.V1beta1.Model.ListGroupStatsResponse{}]
    )
  end

  @doc """
  Get the specified group.

  ## Parameters

  - connection (GoogleApi.CloudErrorReporting.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;groupName&#x60;. [Required] The group resource name. Written as &lt;code&gt;projects/&lt;var&gt;projectID&lt;/var&gt;/groups/&lt;var&gt;group_name&lt;/var&gt;&lt;/code&gt;. Call &lt;a href&#x3D;\&quot;/error-reporting/reference/rest/v1beta1/projects.groupStats/list\&quot;&gt; &lt;code&gt;groupStats.list&lt;/code&gt;&lt;/a&gt; to return a list of groups belonging to this project.  Example: &lt;code&gt;projects/my-project-123/groups/my-group&lt;/code&gt;
  - groups_id (String.t): Part of &#x60;groupName&#x60;. See documentation of &#x60;projectsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.

  ## Returns

  {:ok, %GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup{}} on success
  {:error, info} on failure
  """
  @spec clouderrorreporting_projects_groups_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup.t()}
          | {:error, Tesla.Env.t()}
  def clouderrorreporting_projects_groups_get(
        connection,
        projects_id,
        groups_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1beta1/projects/{projectsId}/groups/{groupsId}", %{
        "projectsId" => URI.encode_www_form(projects_id),
        "groupsId" => URI.encode_www_form(groups_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup{}]
    )
  end

  @doc """
  Replace the data for the specified group. Fails if the group does not exist.

  ## Parameters

  - connection (GoogleApi.CloudErrorReporting.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;group.name&#x60;. The group resource name. Example: &lt;code&gt;projects/my-project-123/groups/my-groupid&lt;/code&gt;
  - groups_id (String.t): Part of &#x60;group.name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :body (ErrorGroup): 

  ## Returns

  {:ok, %GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup{}} on success
  {:error, info} on failure
  """
  @spec clouderrorreporting_projects_groups_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup.t()}
          | {:error, Tesla.Env.t()}
  def clouderrorreporting_projects_groups_update(
        connection,
        projects_id,
        groups_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v1beta1/projects/{projectsId}/groups/{groupsId}", %{
        "projectsId" => URI.encode_www_form(projects_id),
        "groupsId" => URI.encode_www_form(groups_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup{}]
    )
  end
end
