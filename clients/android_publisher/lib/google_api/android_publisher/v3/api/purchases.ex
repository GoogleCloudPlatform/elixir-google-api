# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AndroidPublisher.V3.Api.Purchases do
  @moduledoc """
  API calls for all endpoints tagged `Purchases`.
  """

  alias GoogleApi.AndroidPublisher.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Acknowledges a purchase of an inapp item.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - The package name of the application the inapp product was sold in (for example, 'com.some.thing').
  *   `product_id` (*type:* `String.t`) - The inapp product SKU (for example, 'com.some.thing.inapp1').
  *   `token` (*type:* `String.t`) - The token provided to the user's device when the subscription was purchased.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AndroidPublisher.V3.Model.ProductPurchasesAcknowledgeRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_purchases_products_acknowledge(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def androidpublisher_purchases_products_acknowledge(
        connection,
        package_name,
        product_id,
        token,
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
      |> Request.url(
        "/androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}:acknowledge",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "productId" => URI.encode(product_id, &URI.char_unreserved?/1),
          "token" => URI.encode(token, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Checks the purchase and consumption status of an inapp item.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - The package name of the application the inapp product was sold in (for example, 'com.some.thing').
  *   `product_id` (*type:* `String.t`) - The inapp product SKU (for example, 'com.some.thing.inapp1').
  *   `token` (*type:* `String.t`) - The token provided to the user's device when the inapp product was purchased.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V3.Model.ProductPurchase{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_purchases_products_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidPublisher.V3.Model.ProductPurchase.t()} | {:error, Tesla.Env.t()}
  def androidpublisher_purchases_products_get(
        connection,
        package_name,
        product_id,
        token,
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
        "/androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "productId" => URI.encode(product_id, &URI.char_unreserved?/1),
          "token" => URI.encode(token, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidPublisher.V3.Model.ProductPurchase{}])
  end

  @doc """
  Acknowledges a subscription purchase.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - The package name of the application for which this subscription was purchased (for example, 'com.some.thing').
  *   `subscription_id` (*type:* `String.t`) - The purchased subscription ID (for example, 'monthly001').
  *   `token` (*type:* `String.t`) - The token provided to the user's device when the subscription was purchased.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchasesAcknowledgeRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_purchases_subscriptions_acknowledge(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def androidpublisher_purchases_subscriptions_acknowledge(
        connection,
        package_name,
        subscription_id,
        token,
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
      |> Request.url(
        "/androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:acknowledge",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "subscriptionId" => URI.encode(subscription_id, &URI.char_unreserved?/1),
          "token" => URI.encode(token, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Cancels a user's subscription purchase. The subscription remains valid until its expiration time.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - The package name of the application for which this subscription was purchased (for example, 'com.some.thing').
  *   `subscription_id` (*type:* `String.t`) - The purchased subscription ID (for example, 'monthly001').
  *   `token` (*type:* `String.t`) - The token provided to the user's device when the subscription was purchased.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_purchases_subscriptions_cancel(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def androidpublisher_purchases_subscriptions_cancel(
        connection,
        package_name,
        subscription_id,
        token,
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
      |> Request.method(:post)
      |> Request.url(
        "/androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:cancel",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "subscriptionId" => URI.encode(subscription_id, &URI.char_unreserved?/1),
          "token" => URI.encode(token, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Defers a user's subscription purchase until a specified future expiration time.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - The package name of the application for which this subscription was purchased (for example, 'com.some.thing').
  *   `subscription_id` (*type:* `String.t`) - The purchased subscription ID (for example, 'monthly001').
  *   `token` (*type:* `String.t`) - The token provided to the user's device when the subscription was purchased.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchasesDeferRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchasesDeferResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_purchases_subscriptions_defer(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchasesDeferResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidpublisher_purchases_subscriptions_defer(
        connection,
        package_name,
        subscription_id,
        token,
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
      |> Request.url(
        "/androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:defer",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "subscriptionId" => URI.encode(subscription_id, &URI.char_unreserved?/1),
          "token" => URI.encode(token, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchasesDeferResponse{}]
    )
  end

  @doc """
  Checks whether a user's subscription purchase is valid and returns its expiry time.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - The package name of the application for which this subscription was purchased (for example, 'com.some.thing').
  *   `subscription_id` (*type:* `String.t`) - The purchased subscription ID (for example, 'monthly001').
  *   `token` (*type:* `String.t`) - The token provided to the user's device when the subscription was purchased.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchase{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_purchases_subscriptions_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchase.t()}
          | {:error, Tesla.Env.t()}
  def androidpublisher_purchases_subscriptions_get(
        connection,
        package_name,
        subscription_id,
        token,
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
        "/androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "subscriptionId" => URI.encode(subscription_id, &URI.char_unreserved?/1),
          "token" => URI.encode(token, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchase{}]
    )
  end

  @doc """
  Refunds a user's subscription purchase, but the subscription remains valid until its expiration time and it will continue to recur.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - The package name of the application for which this subscription was purchased (for example, 'com.some.thing').
  *   `subscription_id` (*type:* `String.t`) - The purchased subscription ID (for example, 'monthly001').
  *   `token` (*type:* `String.t`) - The token provided to the user's device when the subscription was purchased.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_purchases_subscriptions_refund(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def androidpublisher_purchases_subscriptions_refund(
        connection,
        package_name,
        subscription_id,
        token,
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
      |> Request.method(:post)
      |> Request.url(
        "/androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:refund",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "subscriptionId" => URI.encode(subscription_id, &URI.char_unreserved?/1),
          "token" => URI.encode(token, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Refunds and immediately revokes a user's subscription purchase. Access to the subscription will be terminated immediately and it will stop recurring.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - The package name of the application for which this subscription was purchased (for example, 'com.some.thing').
  *   `subscription_id` (*type:* `String.t`) - The purchased subscription ID (for example, 'monthly001').
  *   `token` (*type:* `String.t`) - The token provided to the user's device when the subscription was purchased.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_purchases_subscriptions_revoke(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def androidpublisher_purchases_subscriptions_revoke(
        connection,
        package_name,
        subscription_id,
        token,
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
      |> Request.method(:post)
      |> Request.url(
        "/androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:revoke",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "subscriptionId" => URI.encode(subscription_id, &URI.char_unreserved?/1),
          "token" => URI.encode(token, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Lists the purchases that were canceled, refunded or charged-back.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - The package name of the application for which voided purchases need to be returned (for example, 'com.some.thing').
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:endTime` (*type:* `String.t`) - The time, in milliseconds since the Epoch, of the newest voided in-app product purchase that you want to see in the response. The value of this parameter cannot be greater than the current time and is ignored if a pagination token is set. Default value is current time. Note: This filter is applied on the time at which the record is seen as voided by our systems and not the actual voided time returned in the response.
      *   `:maxResults` (*type:* `integer()`) - 
      *   `:startIndex` (*type:* `integer()`) - 
      *   `:startTime` (*type:* `String.t`) - The time, in milliseconds since the Epoch, of the oldest voided in-app product purchase that you want to see in the response. The value of this parameter cannot be older than 30 days and is ignored if a pagination token is set. Default value is current time minus 30 days. Note: This filter is applied on the time at which the record is seen as voided by our systems and not the actual voided time returned in the response.
      *   `:token` (*type:* `String.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V3.Model.VoidedPurchasesListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_purchases_voidedpurchases_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidPublisher.V3.Model.VoidedPurchasesListResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidpublisher_purchases_voidedpurchases_list(
        connection,
        package_name,
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
      :endTime => :query,
      :maxResults => :query,
      :startIndex => :query,
      :startTime => :query,
      :token => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/androidpublisher/v3/applications/{packageName}/purchases/voidedpurchases",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidPublisher.V3.Model.VoidedPurchasesListResponse{}]
    )
  end
end
