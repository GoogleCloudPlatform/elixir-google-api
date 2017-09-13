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

defmodule GoogleApi.CloudBilling.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.CloudBilling.V1.Connection
  import GoogleApi.CloudBilling.V1.RequestBuilder


  @doc """
  Gets the billing information for a project. The current authenticated user must have [permission to view the project](https://cloud.google.com/docs/permissions-overview#h.bgs0oxofvnoo ).

  ## Parameters

  - connection (GoogleApi.CloudBilling.V1.Connection): Connection to server
  - name (String): The resource name of the project for which billing information is retrieved. For example, &#x60;projects/tokyo-rain-123&#x60;.
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String): OAuth access token.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :alt (String): Data format for response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo{}} on success
  {:error, info} on failure
  """
  @spec cloudbilling_projects_get_billing_info(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo.t} | {:error, Tesla.Env.t}
  def cloudbilling_projects_get_billing_info(connection, name, opts \\ []) do
    optional_params = %{
      :"access_token" => :query,
      :"prettyPrint" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"fields" => :query,
      :"alt" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"oauth_token" => :query,
      :"uploadType" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/#{name}/billingInfo")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo{})
  end

  @doc """
  Sets or updates the billing account associated with a project. You specify the new billing account by setting the &#x60;billing_account_name&#x60; in the &#x60;ProjectBillingInfo&#x60; resource to the resource name of a billing account. Associating a project with an open billing account enables billing on the project and allows charges for resource usage. If the project already had a billing account, this method changes the billing account used for resource usage charges.  *Note:* Incurred charges that have not yet been reported in the transaction history of the Google Cloud Console may be billed to the new billing account, even if the charge occurred before the new billing account was assigned to the project.  The current authenticated user must have ownership privileges for both the [project](https://cloud.google.com/docs/permissions-overview#h.bgs0oxofvnoo ) and the [billing account](https://support.google.com/cloud/answer/4430947).  You can disable billing on the project by setting the &#x60;billing_account_name&#x60; field to empty. This action disassociates the current billing account from the project. Any billable activity of your in-use services will stop, and your application could stop functioning as expected. Any unbilled charges to date will be billed to the previously associated account. The current authenticated user must be either an owner of the project or an owner of the billing account for the project.  Note that associating a project with a *closed* billing account will have much the same effect as disabling billing on the project: any paid resources used by the project will be shut down. Thus, unless you wish to disable billing, you should always call this method with the name of an *open* billing account.

  ## Parameters

  - connection (GoogleApi.CloudBilling.V1.Connection): Connection to server
  - name (String): The resource name of the project associated with the billing information that you want to update. For example, &#x60;projects/tokyo-rain-123&#x60;.
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String): OAuth access token.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :alt (String): Data format for response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :body (ProjectBillingInfo): 

  ## Returns

  {:ok, %GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo{}} on success
  {:error, info} on failure
  """
  @spec cloudbilling_projects_update_billing_info(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo.t} | {:error, Tesla.Env.t}
  def cloudbilling_projects_update_billing_info(connection, name, opts \\ []) do
    optional_params = %{
      :"access_token" => :query,
      :"prettyPrint" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"fields" => :query,
      :"alt" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"oauth_token" => :query,
      :"uploadType" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/v1/#{name}/billingInfo")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.CloudBilling.V1.Model.ProjectBillingInfo{})
  end
end
