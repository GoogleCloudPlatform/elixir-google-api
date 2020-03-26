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

defmodule GoogleApi.Directory.Directory_v1.Api.Customers do
  @moduledoc """
  API calls for all endpoints tagged `Customers`.
  """

  alias GoogleApi.Directory.Directory_v1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  
  @doc """
  Retrieves a customer.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Directory.Directory_v1.Connection.t`) - Connection to server
  *   `customer_key` (*type:* `String.t`) - Id of the customer to be retrieved
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

  *   `{:ok, %GoogleApi.Directory.Directory_v1.Model.Customer{}}` on success
  *   `{:error, info}` on failure
  """
  @spec directory_customers_get(Tesla.Env.client(), String.t, keyword(), keyword()) :: {:ok, GoogleApi.Directory.Directory_v1.Model.Customer.t} | {:ok, Tesla.Env.t()} | {:error, Tesla.Env.t()}
  def directory_customers_get(connection, customer_key, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
    
      :"alt" => :"query",
    
      :"fields" => :"query",
    
      :"key" => :"query",
    
      :"oauth_token" => :"query",
    
      :"prettyPrint" => :"query",
    
      :"quotaUser" => :"query",
    
      :"userIp" => :"query",
    
    
    }

    request =
      Request.new()
      |> Request.method(:"get")
      |> Request.url("/customers/{customerKey}", %{
        "customerKey" => URI.encode(customer_key, &URI.char_unreserved?/1),
      })
      
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Directory.Directory_v1.Model.Customer{}])
  end
  
  @doc """
  Updates a customer. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Directory.Directory_v1.Connection.t`) - Connection to server
  *   `customer_key` (*type:* `String.t`) - Id of the customer to be updated
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Directory.Directory_v1.Model.Customer.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Directory.Directory_v1.Model.Customer{}}` on success
  *   `{:error, info}` on failure
  """
  @spec directory_customers_patch(Tesla.Env.client(), String.t, keyword(), keyword()) :: {:ok, GoogleApi.Directory.Directory_v1.Model.Customer.t} | {:ok, Tesla.Env.t()} | {:error, Tesla.Env.t()}
  def directory_customers_patch(connection, customer_key, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
    
      :"alt" => :"query",
    
      :"fields" => :"query",
    
      :"key" => :"query",
    
      :"oauth_token" => :"query",
    
      :"prettyPrint" => :"query",
    
      :"quotaUser" => :"query",
    
      :"userIp" => :"query",
    
    
      :"body" => :"body",
    
    }

    request =
      Request.new()
      |> Request.method(:"patch")
      |> Request.url("/customers/{customerKey}", %{
        "customerKey" => URI.encode(customer_key, &URI.char_unreserved?/1),
      })
      
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Directory.Directory_v1.Model.Customer{}])
  end
  
  @doc """
  Updates a customer.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Directory.Directory_v1.Connection.t`) - Connection to server
  *   `customer_key` (*type:* `String.t`) - Id of the customer to be updated
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Directory.Directory_v1.Model.Customer.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Directory.Directory_v1.Model.Customer{}}` on success
  *   `{:error, info}` on failure
  """
  @spec directory_customers_update(Tesla.Env.client(), String.t, keyword(), keyword()) :: {:ok, GoogleApi.Directory.Directory_v1.Model.Customer.t} | {:ok, Tesla.Env.t()} | {:error, Tesla.Env.t()}
  def directory_customers_update(connection, customer_key, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
    
      :"alt" => :"query",
    
      :"fields" => :"query",
    
      :"key" => :"query",
    
      :"oauth_token" => :"query",
    
      :"prettyPrint" => :"query",
    
      :"quotaUser" => :"query",
    
      :"userIp" => :"query",
    
    
      :"body" => :"body",
    
    }

    request =
      Request.new()
      |> Request.method(:"put")
      |> Request.url("/customers/{customerKey}", %{
        "customerKey" => URI.encode(customer_key, &URI.char_unreserved?/1),
      })
      
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Directory.Directory_v1.Model.Customer{}])
  end
  
end
