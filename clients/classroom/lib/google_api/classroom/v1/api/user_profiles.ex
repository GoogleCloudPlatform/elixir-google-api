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

defmodule GoogleApi.Classroom.V1.Api.UserProfiles do
  @moduledoc """
  API calls for all endpoints tagged `UserProfiles`.
  """

  alias GoogleApi.Classroom.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Returns a user profile.

  This method returns the following error codes:

  * `PERMISSION_DENIED` if the requesting user is not permitted to access
  this user profile, if no profile exists with the requested ID, or for
  access errors.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
  *   `user_id` (*type:* `String.t`) - Identifier of the profile to return. The identifier can be one of the
      following:

      * the numeric identifier for the user
      * the email address of the user
      * the string literal `"me"`, indicating the requesting user
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Classroom.V1.Model.UserProfile{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_user_profiles_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Classroom.V1.Model.UserProfile.t()} | {:error, Tesla.Env.t()}
  def classroom_user_profiles_get(connection, user_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/userProfiles/{userId}", %{
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.UserProfile{}])
  end

  @doc """
  Creates a guardian invitation, and sends an email to the guardian asking
  them to confirm that they are the student's guardian.

  Once the guardian accepts the invitation, their `state` will change to
  `COMPLETED` and they will start receiving guardian notifications. A
  `Guardian` resource will also be created to represent the active guardian.

  The request object must have the `student_id` and
  `invited_email_address` fields set. Failing to set these fields, or
  setting any other fields in the request, will result in an error.

  This method returns the following error codes:

  * `PERMISSION_DENIED` if the current user does not have permission to
    manage guardians, if the guardian in question has already rejected
    too many requests for that student, if guardians are not enabled for the
    domain in question, or for other access errors.
  * `RESOURCE_EXHAUSTED` if the student or guardian has exceeded the guardian
    link limit.
  * `INVALID_ARGUMENT` if the guardian email address is not valid (for
    example, if it is too long), or if the format of the student ID provided
    cannot be recognized (it is not an email address, nor a `user_id` from
    this API). This error will also be returned if read-only fields are set,
    or if the `state` field is set to to a value other than `PENDING`.
  * `NOT_FOUND` if the student ID provided is a valid student ID, but
    Classroom has no record of that student.
  * `ALREADY_EXISTS` if there is already a pending guardian invitation for
    the student and `invited_email_address` provided, or if the provided
    `invited_email_address` matches the Google account of an existing
    `Guardian` for this user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
  *   `student_id` (*type:* `String.t`) - ID of the student (in standard format)
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
      *   `:body` (*type:* `GoogleApi.Classroom.V1.Model.GuardianInvitation.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Classroom.V1.Model.GuardianInvitation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_user_profiles_guardian_invitations_create(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Classroom.V1.Model.GuardianInvitation.t()} | {:error, Tesla.Env.t()}
  def classroom_user_profiles_guardian_invitations_create(
        connection,
        student_id,
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
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/userProfiles/{studentId}/guardianInvitations", %{
        "studentId" => URI.encode(student_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.GuardianInvitation{}])
  end

  @doc """
  Returns a specific guardian invitation.

  This method returns the following error codes:

  * `PERMISSION_DENIED` if the requesting user is not permitted to view
    guardian invitations for the student identified by the `student_id`, if
    guardians are not enabled for the domain in question, or for other
    access errors.
  * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot
    be recognized (it is not an email address, nor a `student_id` from the
    API, nor the literal string `me`).
  * `NOT_FOUND` if Classroom cannot find any record of the given student or
    `invitation_id`. May also be returned if the student exists, but the
    requesting user does not have access to see that student.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
  *   `student_id` (*type:* `String.t`) - The ID of the student whose guardian invitation is being requested.
  *   `invitation_id` (*type:* `String.t`) - The `id` field of the `GuardianInvitation` being requested.
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Classroom.V1.Model.GuardianInvitation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_user_profiles_guardian_invitations_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Classroom.V1.Model.GuardianInvitation.t()} | {:error, Tesla.Env.t()}
  def classroom_user_profiles_guardian_invitations_get(
        connection,
        student_id,
        invitation_id,
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
      |> Request.url("/v1/userProfiles/{studentId}/guardianInvitations/{invitationId}", %{
        "studentId" => URI.encode(student_id, &URI.char_unreserved?/1),
        "invitationId" => URI.encode(invitation_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.GuardianInvitation{}])
  end

  @doc """
  Returns a list of guardian invitations that the requesting user is
  permitted to view, filtered by the parameters provided.

  This method returns the following error codes:

  * `PERMISSION_DENIED` if a `student_id` is specified, and the requesting
    user is not permitted to view guardian invitations for that student, if
    `"-"` is specified as the `student_id` and the user is not a domain
    administrator, if guardians are not enabled for the domain in question,
    or for other access errors.
  * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot
    be recognized (it is not an email address, nor a `student_id` from the
    API, nor the literal string `me`). May also be returned if an invalid
    `page_token` or `state` is provided.
  * `NOT_FOUND` if a `student_id` is specified, and its format can be
    recognized, but Classroom has no record of that student.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
  *   `student_id` (*type:* `String.t`) - The ID of the student whose guardian invitations are to be returned.
      The identifier can be one of the following:

      * the numeric identifier for the user
      * the email address of the user
      * the string literal `"me"`, indicating the requesting user
      * the string literal `"-"`, indicating that results should be returned for
        all students that the requesting user is permitted to view guardian
        invitations.
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
      *   `:invitedEmailAddress` (*type:* `String.t`) - If specified, only results with the specified `invited_email_address`
          will be returned.
      *   `:pageSize` (*type:* `integer()`) - Maximum number of items to return. Zero or unspecified indicates that the
          server may assign a maximum.

          The server may return fewer than the specified number of results.
      *   `:pageToken` (*type:* `String.t`) - nextPageToken
          value returned from a previous
          list call,
          indicating that the subsequent page of results should be returned.

          The list request
          must be otherwise identical to the one that resulted in this token.
      *   `:states` (*type:* `list(String.t)`) - If specified, only results with the specified `state` values will be
          returned. Otherwise, results with a `state` of `PENDING` will be returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Classroom.V1.Model.ListGuardianInvitationsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_user_profiles_guardian_invitations_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Classroom.V1.Model.ListGuardianInvitationsResponse.t()}
          | {:error, Tesla.Env.t()}
  def classroom_user_profiles_guardian_invitations_list(
        connection,
        student_id,
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
      :upload_protocol => :query,
      :invitedEmailAddress => :query,
      :pageSize => :query,
      :pageToken => :query,
      :states => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/userProfiles/{studentId}/guardianInvitations", %{
        "studentId" => URI.encode(student_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Classroom.V1.Model.ListGuardianInvitationsResponse{}]
    )
  end

  @doc """
  Modifies a guardian invitation.

  Currently, the only valid modification is to change the `state` from
  `PENDING` to `COMPLETE`. This has the effect of withdrawing the invitation.

  This method returns the following error codes:

  * `PERMISSION_DENIED` if the current user does not have permission to
    manage guardians, if guardians are not enabled for the domain in question
    or for other access errors.
  * `FAILED_PRECONDITION` if the guardian link is not in the `PENDING` state.
  * `INVALID_ARGUMENT` if the format of the student ID provided
    cannot be recognized (it is not an email address, nor a `user_id` from
    this API), or if the passed `GuardianInvitation` has a `state` other than
    `COMPLETE`, or if it modifies fields other than `state`.
  * `NOT_FOUND` if the student ID provided is a valid student ID, but
    Classroom has no record of that student, or if the `id` field does not
    refer to a guardian invitation known to Classroom.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
  *   `student_id` (*type:* `String.t`) - The ID of the student whose guardian invitation is to be modified.
  *   `invitation_id` (*type:* `String.t`) - The `id` field of the `GuardianInvitation` to be modified.
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
      *   `:updateMask` (*type:* `String.t`) - Mask that identifies which fields on the course to update.
          This field is required to do an update. The update will fail if invalid
          fields are specified. The following fields are valid:

          * `state`

          When set in a query parameter, this field should be specified as

          `updateMask=<field1>,<field2>,...`
      *   `:body` (*type:* `GoogleApi.Classroom.V1.Model.GuardianInvitation.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Classroom.V1.Model.GuardianInvitation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_user_profiles_guardian_invitations_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Classroom.V1.Model.GuardianInvitation.t()} | {:error, Tesla.Env.t()}
  def classroom_user_profiles_guardian_invitations_patch(
        connection,
        student_id,
        invitation_id,
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
      :upload_protocol => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/userProfiles/{studentId}/guardianInvitations/{invitationId}", %{
        "studentId" => URI.encode(student_id, &URI.char_unreserved?/1),
        "invitationId" => URI.encode(invitation_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.GuardianInvitation{}])
  end

  @doc """
  Deletes a guardian.

  The guardian will no longer receive guardian notifications and the guardian
  will no longer be accessible via the API.

  This method returns the following error codes:

  * `PERMISSION_DENIED` if no user that matches the provided `student_id`
    is visible to the requesting user, if the requesting user is not
    permitted to manage guardians for the student identified by the
    `student_id`, if guardians are not enabled for the domain in question,
    or for other access errors.
  * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot
    be recognized (it is not an email address, nor a `student_id` from the
    API).
  * `NOT_FOUND` if the requesting user is permitted to modify guardians for
    the requested `student_id`, but no `Guardian` record exists for that
    student with the provided `guardian_id`.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
  *   `student_id` (*type:* `String.t`) - The student whose guardian is to be deleted. One of the following:

      * the numeric identifier for the user
      * the email address of the user
      * the string literal `"me"`, indicating the requesting user
  *   `guardian_id` (*type:* `String.t`) - The `id` field from a `Guardian`.
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Classroom.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_user_profiles_guardians_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Classroom.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def classroom_user_profiles_guardians_delete(
        connection,
        student_id,
        guardian_id,
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
      |> Request.method(:delete)
      |> Request.url("/v1/userProfiles/{studentId}/guardians/{guardianId}", %{
        "studentId" => URI.encode(student_id, &URI.char_unreserved?/1),
        "guardianId" => URI.encode(guardian_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.Empty{}])
  end

  @doc """
  Returns a specific guardian.

  This method returns the following error codes:

  * `PERMISSION_DENIED` if no user that matches the provided `student_id`
    is visible to the requesting user, if the requesting user is not
    permitted to view guardian information for the student identified by the
    `student_id`, if guardians are not enabled for the domain in question,
    or for other access errors.
  * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot
    be recognized (it is not an email address, nor a `student_id` from the
    API, nor the literal string `me`).
  * `NOT_FOUND` if the requesting user is permitted to view guardians for
    the requested `student_id`, but no `Guardian` record exists for that
    student that matches the provided `guardian_id`.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
  *   `student_id` (*type:* `String.t`) - The student whose guardian is being requested. One of the following:

      * the numeric identifier for the user
      * the email address of the user
      * the string literal `"me"`, indicating the requesting user
  *   `guardian_id` (*type:* `String.t`) - The `id` field from a `Guardian`.
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Classroom.V1.Model.Guardian{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_user_profiles_guardians_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Classroom.V1.Model.Guardian.t()} | {:error, Tesla.Env.t()}
  def classroom_user_profiles_guardians_get(
        connection,
        student_id,
        guardian_id,
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
      |> Request.url("/v1/userProfiles/{studentId}/guardians/{guardianId}", %{
        "studentId" => URI.encode(student_id, &URI.char_unreserved?/1),
        "guardianId" => URI.encode(guardian_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.Guardian{}])
  end

  @doc """
  Returns a list of guardians that the requesting user is permitted to
  view, restricted to those that match the request.

  To list guardians for any student that the requesting user may view
  guardians for, use the literal character `-` for the student ID.

  This method returns the following error codes:

  * `PERMISSION_DENIED` if a `student_id` is specified, and the requesting
    user is not permitted to view guardian information for that student, if
    `"-"` is specified as the `student_id` and the user is not a domain
    administrator, if guardians are not enabled for the domain in question,
    if the `invited_email_address` filter is set by a user who is not a
    domain administrator, or for other access errors.
  * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot
    be recognized (it is not an email address, nor a `student_id` from the
    API, nor the literal string `me`). May also be returned if an invalid
    `page_token` is provided.
  * `NOT_FOUND` if a `student_id` is specified, and its format can be
    recognized, but Classroom has no record of that student.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
  *   `student_id` (*type:* `String.t`) - Filter results by the student who the guardian is linked to.
      The identifier can be one of the following:

      * the numeric identifier for the user
      * the email address of the user
      * the string literal `"me"`, indicating the requesting user
      * the string literal `"-"`, indicating that results should be returned for
        all students that the requesting user has access to view.
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
      *   `:invitedEmailAddress` (*type:* `String.t`) - Filter results by the email address that the original invitation was sent
          to, resulting in this guardian link.
          This filter can only be used by domain administrators.
      *   `:pageSize` (*type:* `integer()`) - Maximum number of items to return. Zero or unspecified indicates that the
          server may assign a maximum.

          The server may return fewer than the specified number of results.
      *   `:pageToken` (*type:* `String.t`) - nextPageToken
          value returned from a previous
          list call,
          indicating that the subsequent page of results should be returned.

          The list request
          must be otherwise identical to the one that resulted in this token.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Classroom.V1.Model.ListGuardiansResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_user_profiles_guardians_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Classroom.V1.Model.ListGuardiansResponse.t()} | {:error, Tesla.Env.t()}
  def classroom_user_profiles_guardians_list(
        connection,
        student_id,
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
      :upload_protocol => :query,
      :invitedEmailAddress => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/userProfiles/{studentId}/guardians", %{
        "studentId" => URI.encode(student_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.ListGuardiansResponse{}])
  end
end
