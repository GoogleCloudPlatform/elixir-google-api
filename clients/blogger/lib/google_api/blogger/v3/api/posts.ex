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

defmodule GoogleApi.Blogger.V3.Api.Posts do
  @moduledoc """
  API calls for all endpoints tagged `Posts`.
  """

  alias GoogleApi.Blogger.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Delete a post by ID.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): The ID of the Blog.
  - post_id (String.t): The ID of the Post.
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
  @spec blogger_posts_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def blogger_posts_delete(connection, blog_id, post_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/blogs/{blogId}/posts/{postId}", %{
        "blogId" => URI.encode_www_form(blog_id),
        "postId" => URI.encode_www_form(post_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Get a post by ID.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): ID of the blog to fetch the post from.
  - post_id (String.t): The ID of the post
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :fetchBody (boolean()): Whether the body content of the post is included (default: true). This should be set to false when the post bodies are not required, to help minimize traffic.
    - :fetchImages (boolean()): Whether image URL metadata for each post is included (default: false).
    - :maxComments (integer()): Maximum number of comments to pull back on a post.
    - :view (String.t): Access level with which to view the returned result. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.Post.t()} | {:error, Tesla.Env.t()}
  def blogger_posts_get(connection, blog_id, post_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :fetchBody => :query,
      :fetchImages => :query,
      :maxComments => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/blogs/{blogId}/posts/{postId}", %{
        "blogId" => URI.encode_www_form(blog_id),
        "postId" => URI.encode_www_form(post_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Post{}])
  end

  @doc """
  Retrieve a Post by Path.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): ID of the blog to fetch the post from.
  - path (String.t): Path of the Post to retrieve.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxComments (integer()): Maximum number of comments to pull back on a post.
    - :view (String.t): Access level with which to view the returned result. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_get_by_path(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.Post.t()} | {:error, Tesla.Env.t()}
  def blogger_posts_get_by_path(connection, blog_id, path, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxComments => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/blogs/{blogId}/posts/bypath", %{
        "blogId" => URI.encode_www_form(blog_id)
      })
      |> Request.add_param(:query, :path, path)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Post{}])
  end

  @doc """
  Add a post.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): ID of the blog to add the post to.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :fetchBody (boolean()): Whether the body content of the post is included with the result (default: true).
    - :fetchImages (boolean()): Whether image URL metadata for each post is included in the returned result (default: false).
    - :isDraft (boolean()): Whether to create the post as a draft (default: false).
    - :body (Post): 

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.Post.t()} | {:error, Tesla.Env.t()}
  def blogger_posts_insert(connection, blog_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :fetchBody => :query,
      :fetchImages => :query,
      :isDraft => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/blogs/{blogId}/posts", %{
        "blogId" => URI.encode_www_form(blog_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Post{}])
  end

  @doc """
  Retrieves a list of posts, possibly filtered.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): ID of the blog to fetch posts from.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :endDate (DateTime.t): Latest post date to fetch, a date-time with RFC 3339 formatting.
    - :fetchBodies (boolean()): Whether the body content of posts is included (default: true). This should be set to false when the post bodies are not required, to help minimize traffic.
    - :fetchImages (boolean()): Whether image URL metadata for each post is included.
    - :labels (String.t): Comma-separated list of labels to search for.
    - :maxResults (integer()): Maximum number of posts to fetch.
    - :orderBy (String.t): Sort search results
    - :pageToken (String.t): Continuation token if the request is paged.
    - :startDate (DateTime.t): Earliest post date to fetch, a date-time with RFC 3339 formatting.
    - :status ([String.t]): Statuses to include in the results.
    - :view (String.t): Access level with which to view the returned result. Note that some fields require escalated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.PostList{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.PostList.t()} | {:error, Tesla.Env.t()}
  def blogger_posts_list(connection, blog_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :endDate => :query,
      :fetchBodies => :query,
      :fetchImages => :query,
      :labels => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query,
      :startDate => :query,
      :status => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/blogs/{blogId}/posts", %{
        "blogId" => URI.encode_www_form(blog_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.PostList{}])
  end

  @doc """
  Update a post. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): The ID of the Blog.
  - post_id (String.t): The ID of the Post.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :fetchBody (boolean()): Whether the body content of the post is included with the result (default: true).
    - :fetchImages (boolean()): Whether image URL metadata for each post is included in the returned result (default: false).
    - :maxComments (integer()): Maximum number of comments to retrieve with the returned post.
    - :publish (boolean()): Whether a publish action should be performed when the post is updated (default: false).
    - :revert (boolean()): Whether a revert action should be performed when the post is updated (default: false).
    - :body (Post): 

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.Post.t()} | {:error, Tesla.Env.t()}
  def blogger_posts_patch(connection, blog_id, post_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :fetchBody => :query,
      :fetchImages => :query,
      :maxComments => :query,
      :publish => :query,
      :revert => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/blogs/{blogId}/posts/{postId}", %{
        "blogId" => URI.encode_www_form(blog_id),
        "postId" => URI.encode_www_form(post_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Post{}])
  end

  @doc """
  Publishes a draft post, optionally at the specific time of the given publishDate parameter.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): The ID of the Blog.
  - post_id (String.t): The ID of the Post.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :publishDate (DateTime.t): Optional date and time to schedule the publishing of the Blog. If no publishDate parameter is given, the post is either published at the a previously saved schedule date (if present), or the current time. If a future date is given, the post will be scheduled to be published.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_publish(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.Post.t()} | {:error, Tesla.Env.t()}
  def blogger_posts_publish(connection, blog_id, post_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :publishDate => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/blogs/{blogId}/posts/{postId}/publish", %{
        "blogId" => URI.encode_www_form(blog_id),
        "postId" => URI.encode_www_form(post_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Post{}])
  end

  @doc """
  Revert a published or scheduled post to draft state.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): The ID of the Blog.
  - post_id (String.t): The ID of the Post.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_revert(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.Post.t()} | {:error, Tesla.Env.t()}
  def blogger_posts_revert(connection, blog_id, post_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/blogs/{blogId}/posts/{postId}/revert", %{
        "blogId" => URI.encode_www_form(blog_id),
        "postId" => URI.encode_www_form(post_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Post{}])
  end

  @doc """
  Search for a post.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): ID of the blog to fetch the post from.
  - q (String.t): Query terms to search this blog for matching posts.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :fetchBodies (boolean()): Whether the body content of posts is included (default: true). This should be set to false when the post bodies are not required, to help minimize traffic.
    - :orderBy (String.t): Sort search results

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.PostList{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_search(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.PostList.t()} | {:error, Tesla.Env.t()}
  def blogger_posts_search(connection, blog_id, q, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :fetchBodies => :query,
      :orderBy => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/blogs/{blogId}/posts/search", %{
        "blogId" => URI.encode_www_form(blog_id)
      })
      |> Request.add_param(:query, :q, q)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.PostList{}])
  end

  @doc """
  Update a post.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): The ID of the Blog.
  - post_id (String.t): The ID of the Post.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :fetchBody (boolean()): Whether the body content of the post is included with the result (default: true).
    - :fetchImages (boolean()): Whether image URL metadata for each post is included in the returned result (default: false).
    - :maxComments (integer()): Maximum number of comments to retrieve with the returned post.
    - :publish (boolean()): Whether a publish action should be performed when the post is updated (default: false).
    - :revert (boolean()): Whether a revert action should be performed when the post is updated (default: false).
    - :body (Post): 

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_update(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.Post.t()} | {:error, Tesla.Env.t()}
  def blogger_posts_update(connection, blog_id, post_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :fetchBody => :query,
      :fetchImages => :query,
      :maxComments => :query,
      :publish => :query,
      :revert => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/blogs/{blogId}/posts/{postId}", %{
        "blogId" => URI.encode_www_form(blog_id),
        "postId" => URI.encode_www_form(post_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Post{}])
  end
end
