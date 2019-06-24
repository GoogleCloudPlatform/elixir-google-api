# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Composer.V1beta1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.Composer.V1beta1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Create a new environment.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Composer.V1beta1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `parent`. The parent must be of the form
      "projects/{projectId}/locations/{locationId}".
  *   `locations_id` (*type:* `String.t`) - Part of `parent`. See documentation of `projectsId`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
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
      *   `:body` (*type:* `GoogleApi.Composer.V1beta1.Model.Environment.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Composer.V1beta1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec composer_projects_locations_environments_create(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Composer.V1beta1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def composer_projects_locations_environments_create(
        connection,
        projects_id,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1beta1/projects/{projectsId}/locations/{locationsId}/environments", %{
        "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
        "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.Operation{}])
  end

  @doc """
  Delete an environment.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Composer.V1beta1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `name`. The environment to delete, in the form:
      "projects/{projectId}/locations/{locationId}/environments/{environmentId}"
  *   `locations_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `environments_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
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

  *   `{:ok, %GoogleApi.Composer.V1beta1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec composer_projects_locations_environments_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Composer.V1beta1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def composer_projects_locations_environments_delete(
        connection,
        projects_id,
        locations_id,
        environments_id,
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
      |> Request.method(:delete)
      |> Request.url(
        "/v1beta1/projects/{projectsId}/locations/{locationsId}/environments/{environmentsId}",
        %{
          "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
          "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1),
          "environmentsId" => URI.encode(environments_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.Operation{}])
  end

  @doc """
  Get an existing environment.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Composer.V1beta1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `name`. The resource name of the environment to get, in the form:
      "projects/{projectId}/locations/{locationId}/environments/{environmentId}"
  *   `locations_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `environments_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
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

  *   `{:ok, %GoogleApi.Composer.V1beta1.Model.Environment{}}` on success
  *   `{:error, info}` on failure
  """
  @spec composer_projects_locations_environments_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Composer.V1beta1.Model.Environment.t()} | {:error, Tesla.Env.t()}
  def composer_projects_locations_environments_get(
        connection,
        projects_id,
        locations_id,
        environments_id,
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
      |> Request.url(
        "/v1beta1/projects/{projectsId}/locations/{locationsId}/environments/{environmentsId}",
        %{
          "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
          "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1),
          "environmentsId" => URI.encode(environments_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.Environment{}])
  end

  @doc """
  List environments.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Composer.V1beta1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `parent`. List environments in the given project and location, in the form:
      "projects/{projectId}/locations/{locationId}"
  *   `locations_id` (*type:* `String.t`) - Part of `parent`. See documentation of `projectsId`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
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
      *   `:pageSize` (*type:* `integer()`) - The maximum number of environments to return.
      *   `:pageToken` (*type:* `String.t`) - The next_page_token value returned from a previous List request, if any.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Composer.V1beta1.Model.ListEnvironmentsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec composer_projects_locations_environments_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Composer.V1beta1.Model.ListEnvironmentsResponse.t()}
          | {:error, Tesla.Env.t()}
  def composer_projects_locations_environments_list(
        connection,
        projects_id,
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
      |> Request.url("/v1beta1/projects/{projectsId}/locations/{locationsId}/environments", %{
        "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
        "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.ListEnvironmentsResponse{}]
    )
  end

  @doc """
  Update an environment.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Composer.V1beta1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `name`. The relative resource name of the environment to update, in the form:
      "projects/{projectId}/locations/{locationId}/environments/{environmentId}"
  *   `locations_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `environments_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
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
      *   `:updateMask` (*type:* `String.t`) - Required. A comma-separated list of paths, relative to `Environment`, of
          fields to update.
          For example, to set the version of scikit-learn to install in the
          environment to 0.19.0 and to remove an existing installation of
          argparse, the `updateMask` parameter would include the following two
          `paths` values: "config.softwareConfig.pypiPackages.scikit-learn" and
          "config.softwareConfig.pypiPackages.argparse". The included patch
          environment would specify the scikit-learn version as follows:

              {
                "config":{
                  "softwareConfig":{
                    "pypiPackages":{
                      "scikit-learn":"==0.19.0"
                    }
                  }
                }
              }

          Note that in the above example, any existing PyPI packages
          other than scikit-learn and argparse will be unaffected.

          Only one update type may be included in a single request's `updateMask`.
          For example, one cannot update both the PyPI packages and
          labels in the same request. However, it is possible to update multiple
          members of a map field simultaneously in the same request. For example,
          to set the labels "label1" and "label2" while clearing "label3" (assuming
          it already exists), one can
          provide the paths "labels.label1", "labels.label2", and "labels.label3"
          and populate the patch environment as follows:

              {
                "labels":{
                  "label1":"new-label1-value"
                  "label2":"new-label2-value"
                }
              }

          Note that in the above example, any existing labels that are not
          included in the `updateMask` will be unaffected.

          It is also possible to replace an entire map field by providing the
          map field's path in the `updateMask`. The new value of the field will
          be that which is provided in the patch environment. For example, to
          delete all pre-existing user-specified PyPI packages and
          install botocore at version 1.7.14, the `updateMask` would contain
          the path "config.softwareConfig.pypiPackages", and
          the patch environment would be the following:

              {
                "config":{
                  "softwareConfig":{
                    "pypiPackages":{
                      "botocore":"==1.7.14"
                    }
                  }
                }
              }

          <strong>Note:</strong> Only the following fields can be updated:

           <table>
           <tbody>
           <tr>
           <td><strong>Mask</strong></td>
           <td><strong>Purpose</strong></td>
           </tr>
           <tr>
           <td>config.softwareConfig.pypiPackages
           </td>
           <td>Replace all custom custom PyPI packages. If a replacement
           package map is not included in `environment`, all custom
           PyPI packages are cleared. It is an error to provide both this mask and a
           mask specifying an individual package.</td>
           </tr>
           <tr>
           <td>config.softwareConfig.pypiPackages.<var>packagename</var></td>
           <td>Update the custom PyPI package <var>packagename</var>,
           preserving other packages. To delete the package, include it in
           `updateMask`, and omit the mapping for it in
           `environment.config.softwareConfig.pypiPackages`. It is an error
           to provide both a mask of this form and the
           "config.softwareConfig.pypiPackages" mask.</td>
           </tr>
           <tr>
           <td>labels</td>
           <td>Replace all environment labels. If a replacement labels map is not
           included in `environment`, all labels are cleared. It is an error to
           provide both this mask and a mask specifying one or more individual
           labels.</td>
           </tr>
           <tr>
           <td>labels.<var>labelName</var></td>
           <td>Set the label named <var>labelName</var>, while preserving other
           labels. To delete the label, include it in `updateMask` and omit its
           mapping in `environment.labels`. It is an error to provide both a
           mask of this form and the "labels" mask.</td>
           </tr>
           <tr>
           <td>config.nodeCount</td>
           <td>Horizontally scale the number of nodes in the environment. An integer
           greater than or equal to 3 must be provided in the `config.nodeCount`
           field.
           </td>
           </tr>
           <tr>
           <td>config.softwareConfig.airflowConfigOverrides</td>
           <td>Replace all Apache Airflow config overrides. If a replacement config
           overrides map is not included in `environment`, all config overrides
           are cleared.
           It is an error to provide both this mask and a mask specifying one or
           more individual config overrides.</td>
           </tr>
           <tr>
           <td>config.softwareConfig.airflowConfigOverrides.<var>section</var>-<var>name
           </var></td>
           <td>Override the Apache Airflow config property <var>name</var> in the
           section named <var>section</var>, preserving other properties. To delete
           the property override, include it in `updateMask` and omit its mapping
           in `environment.config.softwareConfig.airflowConfigOverrides`.
           It is an error to provide both a mask of this form and the
           "config.softwareConfig.airflowConfigOverrides" mask.</td>
           </tr>
           <tr>
           <td>config.softwareConfig.envVariables</td>
           <td>Replace all environment variables. If a replacement environment
           variable map is not included in `environment`, all custom environment
           variables  are cleared.
           It is an error to provide both this mask and a mask specifying one or
           more individual environment variables.</td>
           </tr>
           <tr>
           <td>config.softwareConfig.imageVersion</td>
           <td>Upgrade the version of the environment in-place. Refer to
           `SoftwareConfig.image_version` for information on how to format the new
           image version. Additionally, the new image version cannot effect a version
           downgrade and must match the current image version's Composer major
           version and Airflow major and minor versions. Consult the
           <a href="/composer/docs/concepts/versioning/composer-versions">Cloud
           Composer Version List</a> for valid values.</td>
           </tr>
           </tbody>
           </table>
      *   `:body` (*type:* `GoogleApi.Composer.V1beta1.Model.Environment.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Composer.V1beta1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec composer_projects_locations_environments_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Composer.V1beta1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def composer_projects_locations_environments_patch(
        connection,
        projects_id,
        locations_id,
        environments_id,
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
      |> Request.url(
        "/v1beta1/projects/{projectsId}/locations/{locationsId}/environments/{environmentsId}",
        %{
          "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
          "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1),
          "environmentsId" => URI.encode(environments_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.Operation{}])
  end

  @doc """
  List ImageVersions for provided location.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Composer.V1beta1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `parent`. List ImageVersions in the given project and location, in the form:
      "projects/{projectId}/locations/{locationId}"
  *   `locations_id` (*type:* `String.t`) - Part of `parent`. See documentation of `projectsId`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
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
      *   `:pageSize` (*type:* `integer()`) - The maximum number of image_versions to return.
      *   `:pageToken` (*type:* `String.t`) - The next_page_token value returned from a previous List request, if any.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Composer.V1beta1.Model.ListImageVersionsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec composer_projects_locations_image_versions_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Composer.V1beta1.Model.ListImageVersionsResponse.t()}
          | {:error, Tesla.Env.t()}
  def composer_projects_locations_image_versions_list(
        connection,
        projects_id,
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
      |> Request.url("/v1beta1/projects/{projectsId}/locations/{locationsId}/imageVersions", %{
        "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
        "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.ListImageVersionsResponse{}]
    )
  end

  @doc """
  Deletes a long-running operation. This method indicates that the client is
  no longer interested in the operation result. It does not cancel the
  operation. If the server doesn't support this method, it returns
  `google.rpc.Code.UNIMPLEMENTED`.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Composer.V1beta1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `name`. The name of the operation resource to be deleted.
  *   `locations_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `operations_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
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

  *   `{:ok, %GoogleApi.Composer.V1beta1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec composer_projects_locations_operations_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Composer.V1beta1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def composer_projects_locations_operations_delete(
        connection,
        projects_id,
        locations_id,
        operations_id,
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
      |> Request.method(:delete)
      |> Request.url(
        "/v1beta1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
        %{
          "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
          "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1),
          "operationsId" => URI.encode(operations_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.Empty{}])
  end

  @doc """
  Gets the latest state of a long-running operation.  Clients can use this
  method to poll the operation result at intervals as recommended by the API
  service.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Composer.V1beta1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `name`. The name of the operation resource.
  *   `locations_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `operations_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
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

  *   `{:ok, %GoogleApi.Composer.V1beta1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec composer_projects_locations_operations_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Composer.V1beta1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def composer_projects_locations_operations_get(
        connection,
        projects_id,
        locations_id,
        operations_id,
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
      |> Request.url(
        "/v1beta1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
        %{
          "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
          "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1),
          "operationsId" => URI.encode(operations_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.Operation{}])
  end

  @doc """
  Lists operations that match the specified filter in the request. If the
  server doesn't support this method, it returns `UNIMPLEMENTED`.

  NOTE: the `name` binding allows API services to override the binding
  to use different resource name schemes, such as `users/*/operations`. To
  override the binding, API services can add a binding such as
  `"/v1/{name=users/*}/operations"` to their service configuration.
  For backwards compatibility, the default name includes the operations
  collection id, however overriding users must ensure the name binding
  is the parent resource, without the operations collection id.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Composer.V1beta1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `name`. The name of the operation's parent resource.
  *   `locations_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
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
      *   `:filter` (*type:* `String.t`) - The standard list filter.
      *   `:pageSize` (*type:* `integer()`) - The standard list page size.
      *   `:pageToken` (*type:* `String.t`) - The standard list page token.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Composer.V1beta1.Model.ListOperationsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec composer_projects_locations_operations_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Composer.V1beta1.Model.ListOperationsResponse.t()}
          | {:error, Tesla.Env.t()}
  def composer_projects_locations_operations_list(
        connection,
        projects_id,
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
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1beta1/projects/{projectsId}/locations/{locationsId}/operations", %{
        "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
        "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.ListOperationsResponse{}]
    )
  end
end
