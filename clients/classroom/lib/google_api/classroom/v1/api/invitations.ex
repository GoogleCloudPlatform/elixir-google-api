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

defmodule GoogleApi.Classroom.V1.Api.Invitations do
  @moduledoc """
  API calls for all endpoints tagged `Invitations`.
  """

  alias GoogleApi.Classroom.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Accepts an invitation, removing it and adding the invited user to the teachers or students (as appropriate) of the specified course. Only the invited user may accept an invitation.  This method returns the following error codes:  * &#x60;PERMISSION_DENIED&#x60; if the requesting user is not permitted to accept the requested invitation or for access errors. * &#x60;FAILED_PRECONDITION&#x60; for the following request errors:     * CourseMemberLimitReached     * CourseNotModifiable     * CourseTeacherLimitReached     * UserGroupsMembershipLimitReached * &#x60;NOT_FOUND&#x60; if no invitation exists with the requested ID.

  ## Parameters

  - connection (GoogleApi.Classroom.V1.Connection): Connection to server
  - id (String.t): Identifier of the invitation to accept.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for response.
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

  ## Returns

  {:ok, %GoogleApi.Classroom.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec classroom_invitations_accept(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Classroom.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def classroom_invitations_accept(connection, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/invitations/{id}:accept", %{
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.Empty{}])
  end

  @doc """
  Creates an invitation. Only one invitation for a user and course may exist at a time. Delete and re-create an invitation to make changes.  This method returns the following error codes:  * &#x60;PERMISSION_DENIED&#x60; if the requesting user is not permitted to create invitations for this course or for access errors. * &#x60;NOT_FOUND&#x60; if the course or the user does not exist. * &#x60;FAILED_PRECONDITION&#x60; if the requested user&#39;s account is disabled or if the user already has this role or a role with greater permissions. * &#x60;ALREADY_EXISTS&#x60; if an invitation for the specified user and course already exists.

  ## Parameters

  - connection (GoogleApi.Classroom.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for response.
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
    - :body (Invitation): 

  ## Returns

  {:ok, %GoogleApi.Classroom.V1.Model.Invitation{}} on success
  {:error, info} on failure
  """
  @spec classroom_invitations_create(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Classroom.V1.Model.Invitation.t()} | {:error, Tesla.Env.t()}
  def classroom_invitations_create(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/invitations")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.Invitation{}])
  end

  @doc """
  Deletes an invitation.  This method returns the following error codes:  * &#x60;PERMISSION_DENIED&#x60; if the requesting user is not permitted to delete the requested invitation or for access errors. * &#x60;NOT_FOUND&#x60; if no invitation exists with the requested ID.

  ## Parameters

  - connection (GoogleApi.Classroom.V1.Connection): Connection to server
  - id (String.t): Identifier of the invitation to delete.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for response.
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

  ## Returns

  {:ok, %GoogleApi.Classroom.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec classroom_invitations_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Classroom.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def classroom_invitations_delete(connection, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/invitations/{id}", %{
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.Empty{}])
  end

  @doc """
  Returns an invitation.  This method returns the following error codes:  * &#x60;PERMISSION_DENIED&#x60; if the requesting user is not permitted to view the requested invitation or for access errors. * &#x60;NOT_FOUND&#x60; if no invitation exists with the requested ID.

  ## Parameters

  - connection (GoogleApi.Classroom.V1.Connection): Connection to server
  - id (String.t): Identifier of the invitation to return.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for response.
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

  ## Returns

  {:ok, %GoogleApi.Classroom.V1.Model.Invitation{}} on success
  {:error, info} on failure
  """
  @spec classroom_invitations_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Classroom.V1.Model.Invitation.t()} | {:error, Tesla.Env.t()}
  def classroom_invitations_get(connection, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/invitations/{id}", %{
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.Invitation{}])
  end

  @doc """
  Returns a list of invitations that the requesting user is permitted to view, restricted to those that match the list request.  *Note:* At least one of &#x60;user_id&#x60; or &#x60;course_id&#x60; must be supplied. Both fields can be supplied.  This method returns the following error codes:  * &#x60;PERMISSION_DENIED&#x60; for access errors.

  ## Parameters

  - connection (GoogleApi.Classroom.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for response.
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
    - :userId (String.t): Restricts returned invitations to those for a specific user. The identifier can be one of the following:  * the numeric identifier for the user * the email address of the user * the string literal &#x60;\&quot;me\&quot;&#x60;, indicating the requesting user
    - :pageToken (String.t): nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned.  The list request must be otherwise identical to the one that resulted in this token.
    - :pageSize (integer()): Maximum number of items to return. Zero means no maximum.  The server may return fewer than the specified number of results.
    - :courseId (String.t): Restricts returned invitations to those for a course with the specified identifier.

  ## Returns

  {:ok, %GoogleApi.Classroom.V1.Model.ListInvitationsResponse{}} on success
  {:error, info} on failure
  """
  @spec classroom_invitations_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Classroom.V1.Model.ListInvitationsResponse.t()}
          | {:error, Tesla.Env.t()}
  def classroom_invitations_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
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
      :userId => :query,
      :pageToken => :query,
      :pageSize => :query,
      :courseId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/invitations")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.ListInvitationsResponse{}])
  end
end
