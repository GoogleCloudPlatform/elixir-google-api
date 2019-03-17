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

defmodule GoogleApi.Webmaster.V3.Api.Sitemaps do
  @moduledoc """
  API calls for all endpoints tagged `Sitemaps`.
  """

  alias GoogleApi.Webmaster.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes a sitemap from this site.

  ## Parameters

  - connection (GoogleApi.Webmaster.V3.Connection): Connection to server
  - site_url (String.t): The site&#39;s URL, including protocol. For example: http://www.example.com/
  - feedpath (String.t): The URL of the actual sitemap. For example: http://www.example.com/sitemap.xml
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
  @spec webmasters_sitemaps_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def webmasters_sitemaps_delete(
        connection,
        site_url,
        feedpath,
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
      |> Request.url("/sites/{siteUrl}/sitemaps/{feedpath}", %{
        "siteUrl" => URI.encode(site_url, &URI.char_unreserved?/1),
        "feedpath" => URI.encode(feedpath, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves information about a specific sitemap.

  ## Parameters

  - connection (GoogleApi.Webmaster.V3.Connection): Connection to server
  - site_url (String.t): The site&#39;s URL, including protocol. For example: http://www.example.com/
  - feedpath (String.t): The URL of the actual sitemap. For example: http://www.example.com/sitemap.xml
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Webmaster.V3.Model.WmxSitemap{}} on success
  {:error, info} on failure
  """
  @spec webmasters_sitemaps_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Webmaster.V3.Model.WmxSitemap.t()} | {:error, Tesla.Env.t()}
  def webmasters_sitemaps_get(connection, site_url, feedpath, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/sites/{siteUrl}/sitemaps/{feedpath}", %{
        "siteUrl" => URI.encode(site_url, &URI.char_unreserved?/1),
        "feedpath" => URI.encode(feedpath, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Webmaster.V3.Model.WmxSitemap{}])
  end

  @doc """
  Lists the sitemaps-entries submitted for this site, or included in the sitemap index file (if sitemapIndex is specified in the request).

  ## Parameters

  - connection (GoogleApi.Webmaster.V3.Connection): Connection to server
  - site_url (String.t): The site&#39;s URL, including protocol. For example: http://www.example.com/
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :sitemapIndex (String.t): A URL of a site&#39;s sitemap index. For example: http://www.example.com/sitemapindex.xml

  ## Returns

  {:ok, %GoogleApi.Webmaster.V3.Model.SitemapsListResponse{}} on success
  {:error, info} on failure
  """
  @spec webmasters_sitemaps_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Webmaster.V3.Model.SitemapsListResponse.t()} | {:error, Tesla.Env.t()}
  def webmasters_sitemaps_list(connection, site_url, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :sitemapIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/sites/{siteUrl}/sitemaps", %{
        "siteUrl" => URI.encode(site_url, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Webmaster.V3.Model.SitemapsListResponse{}])
  end

  @doc """
  Submits a sitemap for a site.

  ## Parameters

  - connection (GoogleApi.Webmaster.V3.Connection): Connection to server
  - site_url (String.t): The site&#39;s URL, including protocol. For example: http://www.example.com/
  - feedpath (String.t): The URL of the sitemap to add. For example: http://www.example.com/sitemap.xml
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
  @spec webmasters_sitemaps_submit(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def webmasters_sitemaps_submit(
        connection,
        site_url,
        feedpath,
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
      |> Request.method(:put)
      |> Request.url("/sites/{siteUrl}/sitemaps/{feedpath}", %{
        "siteUrl" => URI.encode(site_url, &URI.char_unreserved?/1),
        "feedpath" => URI.encode(feedpath, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end
end
