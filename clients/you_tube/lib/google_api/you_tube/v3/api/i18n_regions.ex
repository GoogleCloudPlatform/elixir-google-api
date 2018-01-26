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

defmodule GoogleApi.YouTube.V3.Api.I18nRegions do
  @moduledoc """
  API calls for all endpoints tagged `I18nRegions`.
  """

  alias GoogleApi.YouTube.V3.Connection
  import GoogleApi.YouTube.V3.RequestBuilder

  @doc """
  Returns a list of content regions that the YouTube website supports.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter specifies the i18nRegion resource properties that the API response will include. Set the parameter value to snippet.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :userIp (String.t): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :hl (String.t): The hl parameter specifies the language that should be used for text values in the API response.

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.I18nRegionListResponse{}} on success
  {:error, info} on failure
  """
  @spec youtube_i18n_regions_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.I18nRegionListResponse.t()} | {:error, Tesla.Env.t()}
  def youtube_i18n_regions_list(connection, part, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :hl => :query
    }

    %{}
    |> method(:get)
    |> url("/youtube/v3/i18nRegions")
    |> add_param(:query, :part, part)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.YouTube.V3.Model.I18nRegionListResponse{})
  end
end
