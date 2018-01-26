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

defmodule GoogleApi.Translate.V2.Api.Translations do
  @moduledoc """
  API calls for all endpoints tagged `Translations`.
  """

  alias GoogleApi.Translate.V2.Connection
  import GoogleApi.Translate.V2.RequestBuilder

  @doc """
  Translates input text, returning translated text.

  ## Parameters

  - connection (GoogleApi.Translate.V2.Connection): Connection to server
  - q ([String.t]): The input text to translate. Repeat this parameter to perform translation operations on multiple text inputs.
  - target (String.t): The language to use for translation of the input text, set to one of the language codes listed in Language Support.
  - opts (KeywordList): [optional] Optional parameters
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :bearer_token (String.t): OAuth bearer token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :callback (String.t): JSONP
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :pp (boolean()): Pretty-print response.
    - :source (String.t): The language of the source text, set to one of the language codes listed in Language Support. If the source language is not specified, the API will attempt to identify the source language automatically and return it within the response.
    - :cid ([String.t]): The customization id for translate
    - :format (String.t): The format of the source text, in either HTML (default) or plain-text. A value of \&quot;html\&quot; indicates HTML and a value of \&quot;text\&quot; indicates plain-text.
    - :model (String.t): The &#x60;model&#x60; type requested for this translation. Valid values are listed in public documentation.

  ## Returns

  {:ok, %GoogleApi.Translate.V2.Model.TranslationsListResponse{}} on success
  {:error, info} on failure
  """
  @spec language_translations_list(Tesla.Env.client(), list(String.t()), String.t(), keyword()) ::
          {:ok, GoogleApi.Translate.V2.Model.TranslationsListResponse.t()}
          | {:error, Tesla.Env.t()}
  def language_translations_list(connection, q, target, opts \\ []) do
    optional_params = %{
      :oauth_token => :query,
      :bearer_token => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :callback => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :quotaUser => :query,
      :pp => :query,
      :source => :query,
      :cid => :query,
      :format => :query,
      :model => :query
    }

    %{}
    |> method(:get)
    |> url("/v2")
    |> add_param(:query, :q, q)
    |> add_param(:query, :target, target)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%{"body" => %GoogleApi.Translate.V2.Model.TranslationsListResponse{}})
  end

  @doc """
  Translates input text, returning translated text.

  ## Parameters

  - connection (GoogleApi.Translate.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :bearer_token (String.t): OAuth bearer token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :callback (String.t): JSONP
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :pp (boolean()): Pretty-print response.
    - :body (TranslateTextRequest):

  ## Returns

  {:ok, %GoogleApi.Translate.V2.Model.TranslationsListResponse{}} on success
  {:error, info} on failure
  """
  @spec language_translations_translate(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Translate.V2.Model.TranslationsListResponse.t()}
          | {:error, Tesla.Env.t()}
  def language_translations_translate(connection, opts \\ []) do
    optional_params = %{
      :oauth_token => :query,
      :bearer_token => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :callback => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :quotaUser => :query,
      :pp => :query,
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/v2")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Translate.V2.Model.TranslationsListResponse{}, true)
  end
end
