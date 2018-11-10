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

defmodule GoogleApi.Indexing.V3.Api.UrlNotifications do
  @moduledoc """
  API calls for all endpoints tagged `UrlNotifications`.
  """

  alias GoogleApi.Indexing.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets metadata about a Web Document. This method can _only_ be used to query URLs that were previously seen in successful Indexing API notifications. Includes the latest &#x60;UrlNotification&#x60; received via this API.

  ## Parameters

  - connection (GoogleApi.Indexing.V3.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :url (String.t): URL that is being queried.

  ## Returns

  {:ok, %GoogleApi.Indexing.V3.Model.UrlNotificationMetadata{}} on success
  {:error, info} on failure
  """
  @spec indexing_url_notifications_get_metadata(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Indexing.V3.Model.UrlNotificationMetadata.t()} | {:error, Tesla.Env.t()}
  def indexing_url_notifications_get_metadata(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :url => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v3/urlNotifications/metadata")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Indexing.V3.Model.UrlNotificationMetadata{}])
  end

  @doc """
  Notifies that a URL has been updated or deleted.

  ## Parameters

  - connection (GoogleApi.Indexing.V3.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :body (UrlNotification): 

  ## Returns

  {:ok, %GoogleApi.Indexing.V3.Model.PublishUrlNotificationResponse{}} on success
  {:error, info} on failure
  """
  @spec indexing_url_notifications_publish(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Indexing.V3.Model.PublishUrlNotificationResponse.t()}
          | {:error, Tesla.Env.t()}
  def indexing_url_notifications_publish(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v3/urlNotifications:publish")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Indexing.V3.Model.PublishUrlNotificationResponse{}]
    )
  end
end
