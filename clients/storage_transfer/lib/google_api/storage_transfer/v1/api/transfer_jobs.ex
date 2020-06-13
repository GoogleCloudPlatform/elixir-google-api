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

defmodule GoogleApi.StorageTransfer.V1.Api.TransferJobs do
  @moduledoc """
  API calls for all endpoints tagged `TransferJobs`.
  """

  alias GoogleApi.StorageTransfer.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Creates a transfer job that runs periodically.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.StorageTransfer.V1.Connection.t`) - Connection to server
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
      *   `:body` (*type:* `GoogleApi.StorageTransfer.V1.Model.TransferJob.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.StorageTransfer.V1.Model.TransferJob{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storagetransfer_transfer_jobs_create(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.StorageTransfer.V1.Model.TransferJob.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def storagetransfer_transfer_jobs_create(connection, optional_params \\ [], opts \\ []) do
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/transferJobs", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StorageTransfer.V1.Model.TransferJob{}])
  end

  @doc """
  Gets a transfer job.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.StorageTransfer.V1.Connection.t`) - Connection to server
  *   `job_name` (*type:* `String.t`) - Required. The job to get.
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
      *   `:projectId` (*type:* `String.t`) - Required. The ID of the Google Cloud Platform Console project that owns the
          job.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.StorageTransfer.V1.Model.TransferJob{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storagetransfer_transfer_jobs_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.StorageTransfer.V1.Model.TransferJob.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def storagetransfer_transfer_jobs_get(connection, job_name, optional_params \\ [], opts \\ []) do
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
      :projectId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+jobName}", %{
        "jobName" => URI.encode(job_name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StorageTransfer.V1.Model.TransferJob{}])
  end

  @doc """
  Lists transfer jobs.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.StorageTransfer.V1.Connection.t`) - Connection to server
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
      *   `:filter` (*type:* `String.t`) - Required. A list of query parameters specified as JSON text in the form of:
          {"project<span>_</span>id":"my_project_id",
           "job_names":["jobid1","jobid2",...],
           "job_statuses":["status1","status2",...]}.
          Since `job_names` and `job_statuses` support multiple values, their values
          must be specified with array notation. `project`<span>`_`</span>`id` is
          required.  `job_names` and `job_statuses` are optional.  The valid values
          for `job_statuses` are case-insensitive:
          ENABLED,
          DISABLED, and
          DELETED.
      *   `:pageSize` (*type:* `integer()`) - The list page size. The max allowed value is 256.
      *   `:pageToken` (*type:* `String.t`) - The list page token.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.StorageTransfer.V1.Model.ListTransferJobsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storagetransfer_transfer_jobs_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.StorageTransfer.V1.Model.ListTransferJobsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def storagetransfer_transfer_jobs_list(connection, optional_params \\ [], opts \\ []) do
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
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/transferJobs", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.StorageTransfer.V1.Model.ListTransferJobsResponse{}]
    )
  end

  @doc """
  Updates a transfer job. Updating a job's transfer spec does not affect
  transfer operations that are running already. Updating a job's schedule
  is not allowed.

  **Note:** The job's status field can be modified
  using this RPC (for example, to set a job's status to
  DELETED,
  DISABLED, or
  ENABLED).

  ## Parameters

  *   `connection` (*type:* `GoogleApi.StorageTransfer.V1.Connection.t`) - Connection to server
  *   `job_name` (*type:* `String.t`) - Required. The name of job to update.
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
      *   `:body` (*type:* `GoogleApi.StorageTransfer.V1.Model.UpdateTransferJobRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.StorageTransfer.V1.Model.TransferJob{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storagetransfer_transfer_jobs_patch(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.StorageTransfer.V1.Model.TransferJob.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def storagetransfer_transfer_jobs_patch(connection, job_name, optional_params \\ [], opts \\ []) do
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/{+jobName}", %{
        "jobName" => URI.encode(job_name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StorageTransfer.V1.Model.TransferJob{}])
  end
end
