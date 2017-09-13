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

defmodule GoogleApi.Mirror.V1.Api.Timeline do
  @moduledoc """
  API calls for all endpoints tagged `Timeline`.
  """

  alias GoogleApi.Mirror.V1.Connection
  import GoogleApi.Mirror.V1.RequestBuilder


  @doc """
  Deletes an attachment from a timeline item.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - item_id (String): The ID of the timeline item the attachment belongs to.
  - attachment_id (String): The ID of the attachment.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_attachments_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def mirror_timeline_attachments_delete(connection, item_id, attachment_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:delete)
    |> url("/mirror/v1/timeline/#{item_id}/attachments/#{attachment_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieves an attachment on a timeline item by item ID and attachment ID.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - item_id (String): The ID of the timeline item the attachment belongs to.
  - attachment_id (String): The ID of the attachment.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.Attachment{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_attachments_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.Attachment.t} | {:error, Tesla.Env.t}
  def mirror_timeline_attachments_get(connection, item_id, attachment_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/mirror/v1/timeline/#{item_id}/attachments/#{attachment_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.Attachment{})
  end

  @doc """
  Adds a new attachment to a timeline item.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - item_id (String): The ID of the timeline item the attachment belongs to.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.Attachment{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_attachments_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.Attachment.t} | {:error, Tesla.Env.t}
  def mirror_timeline_attachments_insert(connection, item_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/mirror/v1/timeline/#{item_id}/attachments")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.Attachment{})
  end

  @doc """
  Adds a new attachment to a timeline item.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - item_id (String): The ID of the timeline item the attachment belongs to.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.Attachment{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_attachments_insert_resumable(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.Attachment.t} | {:error, Tesla.Env.t}
  def mirror_timeline_attachments_insert_resumable(connection, item_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/resumable/upload/mirror/v1/timeline/#{item_id}/attachments")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.Attachment{})
  end

  @doc """
  Adds a new attachment to a timeline item.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - item_id (String): The ID of the timeline item the attachment belongs to.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.Attachment{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_attachments_insert_simple(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.Attachment.t} | {:error, Tesla.Env.t}
  def mirror_timeline_attachments_insert_simple(connection, item_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/upload/mirror/v1/timeline/#{item_id}/attachments")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.Attachment{})
  end

  @doc """
  Returns a list of attachments for a timeline item.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - item_id (String): The ID of the timeline item whose attachments should be listed.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.AttachmentsListResponse{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_attachments_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.AttachmentsListResponse.t} | {:error, Tesla.Env.t}
  def mirror_timeline_attachments_list(connection, item_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/mirror/v1/timeline/#{item_id}/attachments")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.AttachmentsListResponse{})
  end

  @doc """
  Deletes a timeline item.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - id (String): The ID of the timeline item.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_delete(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def mirror_timeline_delete(connection, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:delete)
    |> url("/mirror/v1/timeline/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets a single timeline item by ID.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - id (String): The ID of the timeline item.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t} | {:error, Tesla.Env.t}
  def mirror_timeline_get(connection, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/mirror/v1/timeline/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.TimelineItem{})
  end

  @doc """
  Inserts a new item into the timeline.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (TimelineItem): 

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_insert(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t} | {:error, Tesla.Env.t}
  def mirror_timeline_insert(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/mirror/v1/timeline")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.TimelineItem{})
  end

  @doc """
  Inserts a new item into the timeline.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_insert_resumable(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t} | {:error, Tesla.Env.t}
  def mirror_timeline_insert_resumable(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/resumable/upload/mirror/v1/timeline")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.TimelineItem{})
  end

  @doc """
  Inserts a new item into the timeline.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - upload_type (String): Upload type. Must be \&quot;multipart\&quot;
  - metatdata (TimelineItem): 
  - data (String): 
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_insert_simple(Tesla.Env.client, String.t, GoogleApi.Mirror.V1.Model.TimelineItem.t, String.t, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t} | {:error, Tesla.Env.t}
  def mirror_timeline_insert_simple(connection, upload_type, metatdata, data, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/upload/mirror/v1/timeline")
    |> add_param(:query, :"uploadType", upload_type)
    |> add_param(:body, :"metatdata", metatdata)
    |> add_param(:file, :"data", data)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.TimelineItem{})
  end

  @doc """
  Retrieves a list of timeline items for the authenticated user.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :bundle_id (String): If provided, only items with the given bundleId will be returned.
    - :include_deleted (Boolean): If true, tombstone records for deleted items will be returned.
    - :max_results (Integer): The maximum number of items to include in the response, used for paging.
    - :order_by (String): Controls the order in which timeline items are returned.
    - :page_token (String): Token for the page of results to return.
    - :pinned_only (Boolean): If true, only pinned items will be returned.
    - :source_item_id (String): If provided, only items with the given sourceItemId will be returned.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineListResponse{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.TimelineListResponse.t} | {:error, Tesla.Env.t}
  def mirror_timeline_list(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"bundleId" => :query,
      :"includeDeleted" => :query,
      :"maxResults" => :query,
      :"orderBy" => :query,
      :"pageToken" => :query,
      :"pinnedOnly" => :query,
      :"sourceItemId" => :query
    }
    %{}
    |> method(:get)
    |> url("/mirror/v1/timeline")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.TimelineListResponse{})
  end

  @doc """
  Updates a timeline item in place. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - id (String): The ID of the timeline item.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (TimelineItem): 

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_patch(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t} | {:error, Tesla.Env.t}
  def mirror_timeline_patch(connection, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/mirror/v1/timeline/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.TimelineItem{})
  end

  @doc """
  Updates a timeline item in place.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - id (String): The ID of the timeline item.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (TimelineItem): 

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_update(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t} | {:error, Tesla.Env.t}
  def mirror_timeline_update(connection, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/mirror/v1/timeline/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.TimelineItem{})
  end

  @doc """
  Updates a timeline item in place.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - id (String): The ID of the timeline item.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_update_resumable(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t} | {:error, Tesla.Env.t}
  def mirror_timeline_update_resumable(connection, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/resumable/upload/mirror/v1/timeline/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.TimelineItem{})
  end

  @doc """
  Updates a timeline item in place.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - id (String): The ID of the timeline item.
  - upload_type (String): Upload type. Must be \&quot;multipart\&quot;
  - metatdata (TimelineItem): 
  - data (String): 
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_update_simple(Tesla.Env.client, String.t, String.t, GoogleApi.Mirror.V1.Model.TimelineItem.t, String.t, keyword()) :: {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t} | {:error, Tesla.Env.t}
  def mirror_timeline_update_simple(connection, id, upload_type, metatdata, data, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/upload/mirror/v1/timeline/#{id}")
    |> add_param(:query, :"uploadType", upload_type)
    |> add_param(:body, :"metatdata", metatdata)
    |> add_param(:file, :"data", data)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Mirror.V1.Model.TimelineItem{})
  end
end
