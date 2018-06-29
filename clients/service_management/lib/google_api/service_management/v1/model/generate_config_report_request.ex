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

defmodule GoogleApi.ServiceManagement.V1.Model.GenerateConfigReportRequest do
  @moduledoc """
  Request message for GenerateConfigReport method.

  ## Attributes

  - newConfig (%{optional(String.t) &#x3D;&gt; String.t}): Service configuration for which we want to generate the report. For this version of API, the supported types are google.api.servicemanagement.v1.ConfigRef, google.api.servicemanagement.v1.ConfigSource, and google.api.Service Defaults to: `null`.
  - oldConfig (%{optional(String.t) &#x3D;&gt; String.t}): Service configuration against which the comparison will be done. For this version of API, the supported types are google.api.servicemanagement.v1.ConfigRef, google.api.servicemanagement.v1.ConfigSource, and google.api.Service Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :newConfig => map(),
          :oldConfig => map()
        }

  field(:newConfig, type: :map)
  field(:oldConfig, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.GenerateConfigReportRequest do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.GenerateConfigReportRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.GenerateConfigReportRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
