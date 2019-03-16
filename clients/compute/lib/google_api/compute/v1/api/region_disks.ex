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

defmodule GoogleApi.Compute.V1.Api.RegionDisks do
  @moduledoc """
  API calls for all endpoints tagged `RegionDisks`.
  """

  alias GoogleApi.Compute.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a snapshot of this regional disk.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - region (String.t): Name of the region for this request.
  - disk (String.t): Name of the regional persistent disk to snapshot.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :requestId (String.t): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    - :body (Snapshot): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_region_disks_create_snapshot(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Compute.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def compute_region_disks_create_snapshot(
        connection,
        project,
        region,
        disk,
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
      :requestId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/regions/{region}/disks/{disk}/createSnapshot", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1),
        "disk" => URI.encode(disk, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  Deletes the specified regional persistent disk. Deleting a regional disk removes all the replicas of its data permanently and is irreversible. However, deleting a disk does not delete any snapshots previously made from the disk. You must separately delete snapshots.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - region (String.t): Name of the region for this request.
  - disk (String.t): Name of the regional persistent disk to delete.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :requestId (String.t): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_region_disks_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Compute.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def compute_region_disks_delete(
        connection,
        project,
        region,
        disk,
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
      :requestId => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/{project}/regions/{region}/disks/{disk}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1),
        "disk" => URI.encode(disk, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  Returns a specified regional persistent disk.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - region (String.t): Name of the region for this request.
  - disk (String.t): Name of the regional persistent disk to return.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Disk{}} on success
  {:error, info} on failure
  """
  @spec compute_region_disks_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Compute.V1.Model.Disk.t()} | {:error, Tesla.Env.t()}
  def compute_region_disks_get(
        connection,
        project,
        region,
        disk,
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
      |> Request.url("/{project}/regions/{region}/disks/{disk}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1),
        "disk" => URI.encode(disk, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Disk{}])
  end

  @doc """
  Creates a persistent regional disk in the specified project using the data included in the request.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - region (String.t): Name of the region for this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :requestId (String.t): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    - :sourceImage (String.t): Optional. Source image to restore onto a disk.
    - :body (Disk): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_region_disks_insert(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Compute.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def compute_region_disks_insert(connection, project, region, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :requestId => :query,
      :sourceImage => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/regions/{region}/disks", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  Retrieves the list of persistent disks contained within the specified region.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - region (String.t): Name of the region for this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :filter (String.t): A filter expression that filters resources listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The comparison operator must be either &#x3D;, !&#x3D;, &gt;, or &lt;.  For example, if you are filtering Compute Engine instances, you can exclude instances named example-instance by specifying name !&#x3D; example-instance.  You can also filter nested fields. For example, you could specify scheduling.automaticRestart &#x3D; false to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels.  To filter on multiple expressions, provide each separate expression within parentheses. For example, (scheduling.automaticRestart &#x3D; true) (cpuPlatform &#x3D; \&quot;Intel Skylake\&quot;). By default, each expression is an AND expression. However, you can include AND and OR expressions explicitly. For example, (cpuPlatform &#x3D; \&quot;Intel Skylake\&quot;) OR (cpuPlatform &#x3D; \&quot;Intel Broadwell\&quot;) AND (scheduling.automaticRestart &#x3D; true).
    - :maxResults (integer()): The maximum number of results per page that should be returned. If the number of available results is larger than maxResults, Compute Engine returns a nextPageToken that can be used to get the next page of results in subsequent list requests. Acceptable values are 0 to 500, inclusive. (Default: 500)
    - :orderBy (String.t): Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name.  You can also sort results in descending order based on the creation timestamp using orderBy&#x3D;\&quot;creationTimestamp desc\&quot;. This sorts results based on the creationTimestamp field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first.  Currently, only sorting by name or creationTimestamp desc is supported.
    - :pageToken (String.t): Specifies a page token to use. Set pageToken to the nextPageToken returned by a previous list request to get the next page of results.

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.DiskList{}} on success
  {:error, info} on failure
  """
  @spec compute_region_disks_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Compute.V1.Model.DiskList.t()} | {:error, Tesla.Env.t()}
  def compute_region_disks_list(connection, project, region, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :filter => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/regions/{region}/disks", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.DiskList{}])
  end

  @doc """
  Resizes the specified regional persistent disk.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): The project ID for this request.
  - region (String.t): Name of the region for this request.
  - disk (String.t): Name of the regional persistent disk.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :requestId (String.t): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    - :body (RegionDisksResizeRequest): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_region_disks_resize(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Compute.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def compute_region_disks_resize(
        connection,
        project,
        region,
        disk,
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
      :requestId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/regions/{region}/disks/{disk}/resize", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1),
        "disk" => URI.encode(disk, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  Sets the labels on the target regional disk.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - region (String.t): The region for this request.
  - resource (String.t): Name or id of the resource for this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :requestId (String.t): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    - :body (RegionSetLabelsRequest): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_region_disks_set_labels(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Compute.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def compute_region_disks_set_labels(
        connection,
        project,
        region,
        resource,
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
      :requestId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/regions/{region}/disks/{resource}/setLabels", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1),
        "resource" => URI.encode(resource, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  Returns permissions that a caller has on the specified resource.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - region (String.t): The name of the region for this request.
  - resource (String.t): Name or id of the resource for this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (TestPermissionsRequest): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.TestPermissionsResponse{}} on success
  {:error, info} on failure
  """
  @spec compute_region_disks_test_iam_permissions(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.TestPermissionsResponse.t()} | {:error, Tesla.Env.t()}
  def compute_region_disks_test_iam_permissions(
        connection,
        project,
        region,
        resource,
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
      |> Request.url("/{project}/regions/{region}/disks/{resource}/testIamPermissions", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1),
        "resource" => URI.encode(resource, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.TestPermissionsResponse{}])
  end
end
