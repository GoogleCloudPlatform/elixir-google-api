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

defmodule GoogleApi.AdSenseHost.V41.Api.Associationsessions do
  @moduledoc """
  API calls for all endpoints tagged `Associationsessions`.
  """

  alias GoogleApi.AdSenseHost.V41.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Create an association session for initiating an association with an AdSense user.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - product_code (list(String.t)): Products to associate with the user.
  - website_url (String.t): The URL of the user's hosted website.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :userLocale (String.t): The preferred locale of the user.
    - :websiteLocale (String.t): The locale of the user's hosted website.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AssociationSession{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_associationsessions_start(
          Tesla.Env.client(),
          list(String.t()),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AssociationSession.t()} | {:error, Tesla.Env.t()}
  def adsensehost_associationsessions_start(
        connection,
        product_code,
        website_url,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :userLocale => :query,
      :websiteLocale => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/associationsessions/start", %{})
      |> Request.add_param(:query, :productCode, product_code)
      |> Request.add_param(:query, :websiteUrl, website_url)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.AssociationSession{}])
  end

  @doc """
  Verify an association session after the association callback returns from AdSense signup.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - token (String.t): The token returned to the association callback URL.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AssociationSession{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_associationsessions_verify(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AssociationSession.t()} | {:error, Tesla.Env.t()}
  def adsensehost_associationsessions_verify(connection, token, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/associationsessions/verify", %{})
      |> Request.add_param(:query, :token, token)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.AssociationSession{}])
  end
end
