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

defmodule GoogleApi.AndroidEnterprise.V1.Api.Managedconfigurationsforuser do
  @moduledoc """
  API calls for all endpoints tagged `Managedconfigurationsforuser`.
  """

  alias GoogleApi.AndroidEnterprise.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Removes a per-user managed configuration for an app for the specified user.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - user_id (String.t): The ID of the user.
  - managed_configuration_for_user_id (String.t): The ID of the managed configuration (a product ID), e.g. \&quot;app:com.google.android.gm\&quot;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_managedconfigurationsforuser_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def androidenterprise_managedconfigurationsforuser_delete(
        connection,
        enterprise_id,
        user_id,
        managed_configuration_for_user_id,
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
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url(
        "/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}",
        %{
          "enterpriseId" => URI.encode_www_form(enterprise_id),
          "userId" => URI.encode_www_form(user_id),
          "managedConfigurationForUserId" =>
            URI.encode_www_form(managed_configuration_for_user_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves details of a per-user managed configuration for an app for the specified user.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - user_id (String.t): The ID of the user.
  - managed_configuration_for_user_id (String.t): The ID of the managed configuration (a product ID), e.g. \&quot;app:com.google.android.gm\&quot;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_managedconfigurationsforuser_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_managedconfigurationsforuser_get(
        connection,
        enterprise_id,
        user_id,
        managed_configuration_for_user_id,
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
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}",
        %{
          "enterpriseId" => URI.encode_www_form(enterprise_id),
          "userId" => URI.encode_www_form(user_id),
          "managedConfigurationForUserId" =>
            URI.encode_www_form(managed_configuration_for_user_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}]
    )
  end

  @doc """
  Lists all the per-user managed configurations for the specified user. Only the ID is set.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - user_id (String.t): The ID of the user.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForUserListResponse{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_managedconfigurationsforuser_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForUserListResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_managedconfigurationsforuser_list(
        connection,
        enterprise_id,
        user_id,
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
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser", %{
        "enterpriseId" => URI.encode_www_form(enterprise_id),
        "userId" => URI.encode_www_form(user_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [struct: %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForUserListResponse{}]
    )
  end

  @doc """
  Adds or updates the managed configuration settings for an app for the specified user. If you support the Managed configurations iframe, you can apply managed configurations to a user by specifying an mcmId and its associated configuration variables (if any) in the request. Alternatively, all EMMs can apply managed configurations by passing a list of managed properties. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - user_id (String.t): The ID of the user.
  - managed_configuration_for_user_id (String.t): The ID of the managed configuration (a product ID), e.g. \&quot;app:com.google.android.gm\&quot;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (ManagedConfiguration): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_managedconfigurationsforuser_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_managedconfigurationsforuser_patch(
        connection,
        enterprise_id,
        user_id,
        managed_configuration_for_user_id,
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
      |> Request.method(:patch)
      |> Request.url(
        "/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}",
        %{
          "enterpriseId" => URI.encode_www_form(enterprise_id),
          "userId" => URI.encode_www_form(user_id),
          "managedConfigurationForUserId" =>
            URI.encode_www_form(managed_configuration_for_user_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}]
    )
  end

  @doc """
  Adds or updates the managed configuration settings for an app for the specified user. If you support the Managed configurations iframe, you can apply managed configurations to a user by specifying an mcmId and its associated configuration variables (if any) in the request. Alternatively, all EMMs can apply managed configurations by passing a list of managed properties.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - user_id (String.t): The ID of the user.
  - managed_configuration_for_user_id (String.t): The ID of the managed configuration (a product ID), e.g. \&quot;app:com.google.android.gm\&quot;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (ManagedConfiguration): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_managedconfigurationsforuser_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_managedconfigurationsforuser_update(
        connection,
        enterprise_id,
        user_id,
        managed_configuration_for_user_id,
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
      |> Request.method(:put)
      |> Request.url(
        "/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}",
        %{
          "enterpriseId" => URI.encode_www_form(enterprise_id),
          "userId" => URI.encode_www_form(user_id),
          "managedConfigurationForUserId" =>
            URI.encode_www_form(managed_configuration_for_user_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}]
    )
  end
end
