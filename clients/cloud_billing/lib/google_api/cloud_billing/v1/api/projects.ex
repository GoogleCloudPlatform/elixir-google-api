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

defmodule GoogleApi.CloudBilling.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.CloudBilling.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets the billing information for a project. The current authenticated user
  must have [permission to view the
  project](https://cloud.google.com/docs/permissions-overview#h.bgs0oxofvnoo
  ).

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudBilling.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The resource name of the project for which billing information is
      retrieved. For example, `projects/tokyo-rain-123`.
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

  *   `{:ok, %GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudbilling_projects_get_billing_info(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo.t()} | {:error, Tesla.Env.t()}
  def cloudbilling_projects_get_billing_info(connection, name, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/{+name}/billingInfo", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo{}])
  end

  @doc """
  Sets or updates the billing account associated with a project. You specify
  the new billing account by setting the `billing_account_name` in the
  `ProjectBillingInfo` resource to the resource name of a billing account.
  Associating a project with an open billing account enables billing on the
  project and allows charges for resource usage. If the project already had a
  billing account, this method changes the billing account used for resource
  usage charges.

  *Note:* Incurred charges that have not yet been reported in the transaction
  history of the GCP Console might be billed to the new billing
  account, even if the charge occurred before the new billing account was
  assigned to the project.

  The current authenticated user must have ownership privileges for both the
  [project](https://cloud.google.com/docs/permissions-overview#h.bgs0oxofvnoo
  ) and the [billing
  account](https://cloud.google.com/billing/docs/how-to/billing-access).

  You can disable billing on the project by setting the
  `billing_account_name` field to empty. This action disassociates the
  current billing account from the project. Any billable activity of your
  in-use services will stop, and your application could stop functioning as
  expected. Any unbilled charges to date will be billed to the previously
  associated account. The current authenticated user must be either an owner
  of the project or an owner of the billing account for the project.

  Note that associating a project with a *closed* billing account will have
  much the same effect as disabling billing on the project: any paid
  resources used by the project will be shut down. Thus, unless you wish to
  disable billing, you should always call this method with the name of an
  *open* billing account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudBilling.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The resource name of the project associated with the billing information
      that you want to update. For example, `projects/tokyo-rain-123`.
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
      *   `:body` (*type:* `GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudbilling_projects_update_billing_info(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo.t()} | {:error, Tesla.Env.t()}
  def cloudbilling_projects_update_billing_info(
        connection,
        name,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v1/{+name}/billingInfo", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo{}])
  end
end
