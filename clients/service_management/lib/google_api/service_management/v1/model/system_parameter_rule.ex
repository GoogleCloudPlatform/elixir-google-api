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

defmodule GoogleApi.ServiceManagement.V1.Model.SystemParameterRule do
  @moduledoc """
  Define a system parameter rule mapping system parameter definitions to methods.

  ## Attributes

  - parameters (List[SystemParameter]): Define parameters. Multiple names may be defined for a parameter. For a given method call, only one of them should be used. If multiple names are used the behavior is implementation-dependent. If none of the specified names are present the behavior is parameter-dependent. Defaults to: `null`.
  - selector (String): Selects the methods to which this rule applies. Use &#39;*&#39; to indicate all methods in all APIs.  Refer to selector for syntax details. Defaults to: `null`.
  """

  defstruct [
    :"parameters",
    :"selector"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.SystemParameterRule do
  import GoogleApi.ServiceManagement.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"parameters", :list, GoogleApi.ServiceManagement.V1.Model.SystemParameter, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.SystemParameterRule do
  def encode(value, options) do
    GoogleApi.ServiceManagement.V1.Deserializer.serialize_non_nil(value, options)
  end
end

