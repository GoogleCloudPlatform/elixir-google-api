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

defmodule GoogleApi.Composer.V1beta1.Model.SoftwareConfig do
  @moduledoc """
  Specifies the selection and configuration of software inside the environment.

  ## Attributes

  - airflowConfigOverrides (%{optional(String.t) &#x3D;&gt; String.t}): Optional. Apache Airflow configuration properties to override.  Property keys contain the section and property names, separated by a hyphen, for example \&quot;core-dags_are_paused_at_creation\&quot;. Section names must not contain hyphens (\&quot;-\&quot;), opening square brackets (\&quot;[\&quot;),  or closing square brackets (\&quot;]\&quot;). The property name must not be empty and must not contain an equals sign (\&quot;&#x3D;\&quot;) or semicolon (\&quot;;\&quot;). Section and property names must not contain a period (\&quot;.\&quot;). Apache Airflow configuration property names must be written in [snake_case](https://en.wikipedia.org/wiki/Snake_case). Property values can contain any character, and can be written in any lower/upper case format.  Certain Apache Airflow configuration property values are [blacklisted](/composer/docs/how-to/managing/setting-airflow-configurations#airflow_configuration_blacklists), and cannot be overridden. Defaults to: `null`.
  - envVariables (%{optional(String.t) &#x3D;&gt; String.t}): Optional. Additional environment variables to provide to the Apache Airflow scheduler, worker, and webserver processes.  Environment variable names must match the regular expression &#x60;a-zA-Z_*&#x60;. They cannot specify Apache Airflow software configuration overrides (they cannot match the regular expression &#x60;AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+&#x60;), and they cannot match any of the following reserved names:  * &#x60;AIRFLOW_HOME&#x60; * &#x60;C_FORCE_ROOT&#x60; * &#x60;CONTAINER_NAME&#x60; * &#x60;DAGS_FOLDER&#x60; * &#x60;GCP_PROJECT&#x60; * &#x60;GCS_BUCKET&#x60; * &#x60;GKE_CLUSTER_NAME&#x60; * &#x60;SQL_DATABASE&#x60; * &#x60;SQL_INSTANCE&#x60; * &#x60;SQL_PASSWORD&#x60; * &#x60;SQL_PROJECT&#x60; * &#x60;SQL_REGION&#x60; * &#x60;SQL_USER&#x60; Defaults to: `null`.
  - imageVersion (String.t): The version of the software running in the environment. This encapsulates both the version of Cloud Composer functionality and the version of Apache Airflow. It must match the regular expression &#x60;composer-([0-9]+\\.[0-9]+\\.[0-9]+|latest)-airflow-[0-9]+\\.[0-9]+(\\.[0-9]+.*)?&#x60;. When used as input, the server will also check if the provided version is supported and deny the request for an unsupported version.  The Cloud Composer portion of the version is a [semantic version](https://semver.org) or &#x60;latest&#x60;. The patch version can be omitted and the current Cloud Composer patch version will be selected. When &#x60;latest&#x60; is provided instead of an explicit version number, the server will replace &#x60;latest&#x60; with the current Cloud Composer version and store that version number in the same field.  The portion of the image version that follows &lt;em&gt;airflow-&lt;/em&gt; is an official Apache Airflow repository [release name](https://github.com/apache/incubator-airflow/releases).  Supported values for input are: * &#x60;composer-latest-airflow-1.10.0&#x60; * &#x60;composer-latest-airflow-1.9.0&#x60; * &#x60;composer-latest-airflow-1.10&#x60; * &#x60;composer-latest-airflow-1.9&#x60; * &#x60;composer-1.3.0-airflow-1.10.0&#x60; * &#x60;composer-1.3.0-airflow-1.9.0&#x60; * &#x60;composer-1.3.0-airflow-1.10&#x60; * &#x60;composer-1.3.0-airflow-1.9&#x60;  See also [Release Notes](/composer/docs/release-notes). Defaults to: `null`.
  - pypiPackages (%{optional(String.t) &#x3D;&gt; String.t}): Optional. Custom Python Package Index (PyPI) packages to be installed in the environment.  Keys refer to the lowercase package name such as \&quot;numpy\&quot; and values are the lowercase extras and version specifier such as \&quot;&#x3D;&#x3D;1.12.0\&quot;, \&quot;[devel,gcp_api]\&quot;, or \&quot;[devel]&gt;&#x3D;1.8.2, &lt;1.9.2\&quot;. To specify a package without pinning it to a version specifier, use the empty string as the value. Defaults to: `null`.
  - pythonVersion (String.t): Optional. The major version of Python used to run the Apache Airflow scheduler, worker, and webserver processes.  Can be set to &#39;2&#39; or &#39;3&#39;. If not specified, the default is &#39;2&#39;. Cannot be updated. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :airflowConfigOverrides => map(),
          :envVariables => map(),
          :imageVersion => any(),
          :pypiPackages => map(),
          :pythonVersion => any()
        }

  field(:airflowConfigOverrides, type: :map)
  field(:envVariables, type: :map)
  field(:imageVersion)
  field(:pypiPackages, type: :map)
  field(:pythonVersion)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1beta1.Model.SoftwareConfig do
  def decode(value, options) do
    GoogleApi.Composer.V1beta1.Model.SoftwareConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1beta1.Model.SoftwareConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
