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

defmodule GoogleApi.Partners.V2.Api.Companies do
  @moduledoc """
  API calls for all endpoints tagged `Companies`.
  """

  alias GoogleApi.Partners.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets a company.

  ## Parameters

  - connection (GoogleApi.Partners.V2.Connection): Connection to server
  - company_id (String.t): The ID of the company to retrieve.
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :requestMetadata.trafficSource.trafficSourceId (String.t): Identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    - :requestMetadata.userOverrides.ipAddress (String.t): IP address to use instead of the user&#39;s geo-located IP address.
    - :currencyCode (String.t): If the company&#39;s budget is in a different currency code than this one, then the converted budget is converted to this currency code.
    - :requestMetadata.experimentIds ([String.t]): Experiment IDs the current request belongs to.
    - :requestMetadata.trafficSource.trafficSubId (String.t): Second level identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    - :orderBy (String.t): How to order addresses within the returned company. Currently, only &#x60;address&#x60; and &#x60;address desc&#x60; is supported which will sorted by closest to farthest in distance from given address and farthest to closest distance from given address respectively.
    - :requestMetadata.partnersSessionId (String.t): Google Partners session ID.
    - :requestMetadata.userOverrides.userId (String.t): Logged-in user ID to impersonate instead of the user&#39;s ID.
    - :view (String.t): The view of &#x60;Company&#x60; resource to be returned. This must not be &#x60;COMPANY_VIEW_UNSPECIFIED&#x60;.
    - :address (String.t): The address to use for sorting the company&#39;s addresses by proximity. If not given, the geo-located address of the request is used. Used when order_by is set.
    - :requestMetadata.locale (String.t): Locale to use for the current request.

  ## Returns

  {:ok, %GoogleApi.Partners.V2.Model.GetCompanyResponse{}} on success
  {:error, info} on failure
  """
  @spec partners_companies_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Partners.V2.Model.GetCompanyResponse.t()} | {:error, Tesla.Env.t()}
  def partners_companies_get(connection, company_id, opts \\ []) do
    optional_params = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :"requestMetadata.trafficSource.trafficSourceId" => :query,
      :"requestMetadata.userOverrides.ipAddress" => :query,
      :currencyCode => :query,
      :"requestMetadata.experimentIds" => :query,
      :"requestMetadata.trafficSource.trafficSubId" => :query,
      :orderBy => :query,
      :"requestMetadata.partnersSessionId" => :query,
      :"requestMetadata.userOverrides.userId" => :query,
      :view => :query,
      :address => :query,
      :"requestMetadata.locale" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/companies/{companyId}", %{
        "companyId" => URI.encode_www_form(company_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Partners.V2.Model.GetCompanyResponse{})
  end

  @doc """
  Creates an advertiser lead for the given company ID.

  ## Parameters

  - connection (GoogleApi.Partners.V2.Connection): Connection to server
  - company_id (String.t): The ID of the company to contact.
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :body (CreateLeadRequest): 

  ## Returns

  {:ok, %GoogleApi.Partners.V2.Model.CreateLeadResponse{}} on success
  {:error, info} on failure
  """
  @spec partners_companies_leads_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Partners.V2.Model.CreateLeadResponse.t()} | {:error, Tesla.Env.t()}
  def partners_companies_leads_create(connection, company_id, opts \\ []) do
    optional_params = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/companies/{companyId}/leads", %{
        "companyId" => URI.encode_www_form(company_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Partners.V2.Model.CreateLeadResponse{})
  end

  @doc """
  Lists companies.

  ## Parameters

  - connection (GoogleApi.Partners.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :requestMetadata.userOverrides.ipAddress (String.t): IP address to use instead of the user&#39;s geo-located IP address.
    - :requestMetadata.experimentIds ([String.t]): Experiment IDs the current request belongs to.
    - :orderBy (String.t): How to order addresses within the returned companies. Currently, only &#x60;address&#x60; and &#x60;address desc&#x60; is supported which will sorted by closest to farthest in distance from given address and farthest to closest distance from given address respectively.
    - :specializations ([String.t]): List of specializations that the returned agencies should provide. If this is not empty, any returned agency must have at least one of these specializations, or one of the services in the \&quot;services\&quot; field.
    - :maxMonthlyBudget.currencyCode (String.t): The 3-letter currency code defined in ISO 4217.
    - :requestMetadata.userOverrides.userId (String.t): Logged-in user ID to impersonate instead of the user&#39;s ID.
    - :minMonthlyBudget.currencyCode (String.t): The 3-letter currency code defined in ISO 4217.
    - :view (String.t): The view of the &#x60;Company&#x60; resource to be returned. This must not be &#x60;COMPANY_VIEW_UNSPECIFIED&#x60;.
    - :requestMetadata.locale (String.t): Locale to use for the current request.
    - :address (String.t): The address to use when searching for companies. If not given, the geo-located address of the request is used.
    - :minMonthlyBudget.units (String.t): The whole units of the amount. For example if &#x60;currencyCode&#x60; is &#x60;\&quot;USD\&quot;&#x60;, then 1 unit is one US dollar.
    - :maxMonthlyBudget.nanos (integer()): Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If &#x60;units&#x60; is positive, &#x60;nanos&#x60; must be positive or zero. If &#x60;units&#x60; is zero, &#x60;nanos&#x60; can be positive, zero, or negative. If &#x60;units&#x60; is negative, &#x60;nanos&#x60; must be negative or zero. For example $-1.75 is represented as &#x60;units&#x60;&#x3D;-1 and &#x60;nanos&#x60;&#x3D;-750,000,000.
    - :services ([String.t]): List of services that the returned agencies should provide. If this is not empty, any returned agency must have at least one of these services, or one of the specializations in the \&quot;specializations\&quot; field.
    - :maxMonthlyBudget.units (String.t): The whole units of the amount. For example if &#x60;currencyCode&#x60; is &#x60;\&quot;USD\&quot;&#x60;, then 1 unit is one US dollar.
    - :requestMetadata.trafficSource.trafficSourceId (String.t): Identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    - :requestMetadata.trafficSource.trafficSubId (String.t): Second level identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    - :minMonthlyBudget.nanos (integer()): Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If &#x60;units&#x60; is positive, &#x60;nanos&#x60; must be positive or zero. If &#x60;units&#x60; is zero, &#x60;nanos&#x60; can be positive, zero, or negative. If &#x60;units&#x60; is negative, &#x60;nanos&#x60; must be negative or zero. For example $-1.75 is represented as &#x60;units&#x60;&#x3D;-1 and &#x60;nanos&#x60;&#x3D;-750,000,000.
    - :requestMetadata.partnersSessionId (String.t): Google Partners session ID.
    - :companyName (String.t): Company name to search for.
    - :pageToken (String.t): A token identifying a page of results that the server returns. Typically, this is the value of &#x60;ListCompaniesResponse.next_page_token&#x60; returned from the previous call to ListCompanies.
    - :industries ([String.t]): List of industries the company can help with.
    - :websiteUrl (String.t): Website URL that will help to find a better matched company. .
    - :gpsMotivations ([String.t]): List of reasons for using Google Partner Search to get companies.
    - :languageCodes ([String.t]): List of language codes that company can support. Only primary language subtags are accepted as defined by &lt;a href&#x3D;\&quot;https://tools.ietf.org/html/bcp47\&quot;&gt;BCP 47&lt;/a&gt; (IETF BCP 47, \&quot;Tags for Identifying Languages\&quot;).
    - :pageSize (integer()): Requested page size. Server may return fewer companies than requested. If unspecified, server picks an appropriate default.

  ## Returns

  {:ok, %GoogleApi.Partners.V2.Model.ListCompaniesResponse{}} on success
  {:error, info} on failure
  """
  @spec partners_companies_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Partners.V2.Model.ListCompaniesResponse.t()} | {:error, Tesla.Env.t()}
  def partners_companies_list(connection, opts \\ []) do
    optional_params = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :"requestMetadata.userOverrides.ipAddress" => :query,
      :"requestMetadata.experimentIds" => :query,
      :orderBy => :query,
      :specializations => :query,
      :"maxMonthlyBudget.currencyCode" => :query,
      :"requestMetadata.userOverrides.userId" => :query,
      :"minMonthlyBudget.currencyCode" => :query,
      :view => :query,
      :"requestMetadata.locale" => :query,
      :address => :query,
      :"minMonthlyBudget.units" => :query,
      :"maxMonthlyBudget.nanos" => :query,
      :services => :query,
      :"maxMonthlyBudget.units" => :query,
      :"requestMetadata.trafficSource.trafficSourceId" => :query,
      :"requestMetadata.trafficSource.trafficSubId" => :query,
      :"minMonthlyBudget.nanos" => :query,
      :"requestMetadata.partnersSessionId" => :query,
      :companyName => :query,
      :pageToken => :query,
      :industries => :query,
      :websiteUrl => :query,
      :gpsMotivations => :query,
      :languageCodes => :query,
      :pageSize => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/companies")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Partners.V2.Model.ListCompaniesResponse{})
  end
end
