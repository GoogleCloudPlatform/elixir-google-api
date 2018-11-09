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

defmodule GoogleApi.Mirror.V1.Api.Accounts do
  @moduledoc """
  API calls for all endpoints tagged `Accounts`.
  """

  alias GoogleApi.Mirror.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Inserts a new account for a user

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - user_token (String.t): The ID for the user.
  - account_type (String.t): Account type to be passed to Android Account Manager.
  - account_name (String.t): The name of the account to be passed to the Android Account Manager.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Account): 

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.Account{}} on success
  {:error, info} on failure
  """
  @spec mirror_accounts_insert(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Mirror.V1.Model.Account.t()} | {:error, Tesla.Env.t()}
  def mirror_accounts_insert(
        connection,
        user_token,
        account_type,
        account_name,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/mirror/v1/accounts/{userToken}/{accountType}/{accountName}", %{
        "userToken" => URI.encode_www_form(user_token),
        "accountType" => URI.encode_www_form(account_type),
        "accountName" => URI.encode_www_form(account_name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Mirror.V1.Model.Account{}])
  end
end
