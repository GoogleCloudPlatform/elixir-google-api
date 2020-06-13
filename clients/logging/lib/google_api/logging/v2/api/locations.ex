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

defmodule GoogleApi.Logging.V2.Api.Locations do
  @moduledoc """
  API calls for all endpoints tagged `Locations`.
  """

  alias GoogleApi.Logging.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets a bucket (Beta).

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Logging.V2.Connection.t`) - Connection to server
  *   `v2_id` (*type:* `String.t`) - Part of `name`. Required. The resource name of the bucket:
      "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
      "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
      "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
      "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
      Example: "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  *   `v2_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v2Id`.
  *   `locations_id` (*type:* `String.t`) - Part of `name`. See documentation of `v2Id`.
  *   `buckets_id` (*type:* `String.t`) - Part of `name`. See documentation of `v2Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Logging.V2.Model.LogBucket{}}` on success
  *   `{:error, info}` on failure
  """
  @spec logging_locations_buckets_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Logging.V2.Model.LogBucket.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def logging_locations_buckets_get(
        connection,
        v2_id,
        v2_id1,
        locations_id,
        buckets_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets/{bucketsId}", %{
        "v2Id" => URI.encode(v2_id, &URI.char_unreserved?/1),
        "v2Id1" => URI.encode(v2_id1, &URI.char_unreserved?/1),
        "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1),
        "bucketsId" => URI.encode(buckets_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.LogBucket{}])
  end

  @doc """
  Lists buckets (Beta).

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Logging.V2.Connection.t`) - Connection to server
  *   `v2_id` (*type:* `String.t`) - Part of `parent`. Required. The parent resource whose buckets are to be listed:
      "projects/[PROJECT_ID]/locations/[LOCATION_ID]"
      "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]"
      "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]"
      "folders/[FOLDER_ID]/locations/[LOCATION_ID]"
      Note: The locations portion of the resource must be specified, but supplying the character - in place of LOCATION_ID will return all buckets.
  *   `v2_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v2Id`.
  *   `locations_id` (*type:* `String.t`) - Part of `parent`. See documentation of `v2Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:pageSize` (*type:* `integer()`) - Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.
      *   `:pageToken` (*type:* `String.t`) - Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Logging.V2.Model.ListBucketsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec logging_locations_buckets_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Logging.V2.Model.ListBucketsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def logging_locations_buckets_list(
        connection,
        v2_id,
        v2_id1,
        locations_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :uploadType => :query,
      :upload_protocol => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets", %{
        "v2Id" => URI.encode(v2_id, &URI.char_unreserved?/1),
        "v2Id1" => URI.encode(v2_id1, &URI.char_unreserved?/1),
        "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.ListBucketsResponse{}])
  end

  @doc """
  Updates a bucket. This method replaces the following fields in the existing bucket with values from the new bucket: retention_periodIf the retention period is decreased and the bucket is locked, FAILED_PRECONDITION will be returned.If the bucket has a LifecycleState of DELETE_REQUESTED, FAILED_PRECONDITION will be returned.A buckets region may not be modified after it is created. This method is in Beta.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Logging.V2.Connection.t`) - Connection to server
  *   `v2_id` (*type:* `String.t`) - Part of `name`. Required. The full resource name of the bucket to update.
      "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
      "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
      "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
      "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
      Example: "projects/my-project-id/locations/my-location/buckets/my-bucket-id". Also requires permission "resourcemanager.projects.updateLiens" to set the locked property
  *   `v2_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v2Id`.
  *   `locations_id` (*type:* `String.t`) - Part of `name`. See documentation of `v2Id`.
  *   `buckets_id` (*type:* `String.t`) - Part of `name`. See documentation of `v2Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:updateMask` (*type:* `String.t`) - Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample: updateMask=retention_days.
      *   `:body` (*type:* `GoogleApi.Logging.V2.Model.LogBucket.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Logging.V2.Model.LogBucket{}}` on success
  *   `{:error, info}` on failure
  """
  @spec logging_locations_buckets_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Logging.V2.Model.LogBucket.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def logging_locations_buckets_patch(
        connection,
        v2_id,
        v2_id1,
        locations_id,
        buckets_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :uploadType => :query,
      :upload_protocol => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets/{bucketsId}", %{
        "v2Id" => URI.encode(v2_id, &URI.char_unreserved?/1),
        "v2Id1" => URI.encode(v2_id1, &URI.char_unreserved?/1),
        "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1),
        "bucketsId" => URI.encode(buckets_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.LogBucket{}])
  end
end
