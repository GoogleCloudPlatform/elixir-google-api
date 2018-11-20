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

defmodule GoogleApi.OSLogin.V1.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias GoogleApi.OSLogin.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves the profile information used for logging in to a virtual machine on Google Compute Engine.

  ## Parameters

  - connection (GoogleApi.OSLogin.V1.Connection): Connection to server
  - name (String.t): The unique ID for the user in format &#x60;users/{user}&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :projectId (String.t): The project ID of the Google Cloud Platform project.
    - :systemId (String.t): A system ID for filtering the results of the request.

  ## Returns

  {:ok, %GoogleApi.OSLogin.V1.Model.LoginProfile{}} on success
  {:error, info} on failure
  """
  @spec oslogin_users_get_login_profile(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.OSLogin.V1.Model.LoginProfile.t()} | {:error, Tesla.Env.t()}
  def oslogin_users_get_login_profile(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :projectId => :query,
      :systemId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}/loginProfile", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.OSLogin.V1.Model.LoginProfile{}])
  end

  @doc """
  Adds an SSH public key and returns the profile information. Default POSIX account information is set when no username and UID exist as part of the login profile.

  ## Parameters

  - connection (GoogleApi.OSLogin.V1.Connection): Connection to server
  - parent (String.t): The unique ID for the user in format &#x60;users/{user}&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :projectId (String.t): The project ID of the Google Cloud Platform project.
    - :body (SshPublicKey): 

  ## Returns

  {:ok, %GoogleApi.OSLogin.V1.Model.ImportSshPublicKeyResponse{}} on success
  {:error, info} on failure
  """
  @spec oslogin_users_import_ssh_public_key(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.OSLogin.V1.Model.ImportSshPublicKeyResponse.t()}
          | {:error, Tesla.Env.t()}
  def oslogin_users_import_ssh_public_key(connection, parent, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :projectId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}:importSshPublicKey", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.OSLogin.V1.Model.ImportSshPublicKeyResponse{}])
  end

  @doc """
  Deletes an SSH public key.

  ## Parameters

  - connection (GoogleApi.OSLogin.V1.Connection): Connection to server
  - name (String.t): The fingerprint of the public key to update. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format &#x60;users/{user}/sshPublicKeys/{fingerprint}&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.OSLogin.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec oslogin_users_ssh_public_keys_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.OSLogin.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def oslogin_users_ssh_public_keys_delete(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.OSLogin.V1.Model.Empty{}])
  end

  @doc """
  Retrieves an SSH public key.

  ## Parameters

  - connection (GoogleApi.OSLogin.V1.Connection): Connection to server
  - name (String.t): The fingerprint of the public key to retrieve. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format &#x60;users/{user}/sshPublicKeys/{fingerprint}&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.OSLogin.V1.Model.SshPublicKey{}} on success
  {:error, info} on failure
  """
  @spec oslogin_users_ssh_public_keys_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.OSLogin.V1.Model.SshPublicKey.t()} | {:error, Tesla.Env.t()}
  def oslogin_users_ssh_public_keys_get(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.OSLogin.V1.Model.SshPublicKey{}])
  end

  @doc """
  Updates an SSH public key and returns the profile information. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.OSLogin.V1.Connection): Connection to server
  - name (String.t): The fingerprint of the public key to update. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format &#x60;users/{user}/sshPublicKeys/{fingerprint}&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :updateMask (String.t): Mask to control which fields get updated. Updates all if not present.
    - :body (SshPublicKey): 

  ## Returns

  {:ok, %GoogleApi.OSLogin.V1.Model.SshPublicKey{}} on success
  {:error, info} on failure
  """
  @spec oslogin_users_ssh_public_keys_patch(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.OSLogin.V1.Model.SshPublicKey.t()} | {:error, Tesla.Env.t()}
  def oslogin_users_ssh_public_keys_patch(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.OSLogin.V1.Model.SshPublicKey{}])
  end
end
