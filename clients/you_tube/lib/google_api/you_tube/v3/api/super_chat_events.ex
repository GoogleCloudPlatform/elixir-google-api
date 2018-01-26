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

defmodule GoogleApi.YouTube.V3.Api.SuperChatEvents do
  @moduledoc """
  API calls for all endpoints tagged `SuperChatEvents`.
  """

  alias GoogleApi.YouTube.V3.Connection
  import GoogleApi.YouTube.V3.RequestBuilder

  @doc """
  Lists Super Chat events for a channel.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter specifies the superChatEvent resource parts that the API response will include. Supported values are id and snippet.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :userIp (String.t): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :hl (String.t): The hl parameter instructs the API to retrieve localized resource metadata for a specific application language that the YouTube website supports. The parameter value must be a language code included in the list returned by the i18nLanguages.list method.  If localized resource details are available in that language, the resource&#39;s snippet.localized object will contain the localized values. However, if localized details are not available, the snippet.localized object will contain resource details in the resource&#39;s default language.
    - :maxResults (integer()): The maxResults parameter specifies the maximum number of items that should be returned in the result set.
    - :pageToken (String.t): The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.SuperChatEventListResponse{}} on success
  {:error, info} on failure
  """
  @spec youtube_super_chat_events_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.SuperChatEventListResponse.t()}
          | {:error, Tesla.Env.t()}
  def youtube_super_chat_events_list(connection, part, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :hl => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    %{}
    |> method(:get)
    |> url("/youtube/v3/superChatEvents")
    |> add_param(:query, :part, part)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.YouTube.V3.Model.SuperChatEventListResponse{})
  end
end
