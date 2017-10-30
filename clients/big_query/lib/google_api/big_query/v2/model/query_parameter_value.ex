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

defmodule GoogleApi.BigQuery.V2.Model.QueryParameterValue do
  @moduledoc """
  

  ## Attributes

  - arrayValues (List[QueryParameterValue]): [Optional] The array values, if this is an array type. Defaults to: `null`.
  - structValues (Map[String, QueryParameterValue]): [Optional] The struct field values, in order of the struct type&#39;s declaration. Defaults to: `null`.
  - value (String): [Optional] The value of this value, if a simple scalar type. Defaults to: `null`.
  """

  defstruct [
    :"arrayValues",
    :"structValues",
    :"value"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.QueryParameterValue do
  import GoogleApi.BigQuery.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"arrayValues", :list, GoogleApi.BigQuery.V2.Model.QueryParameterValue, options)
    |> deserialize(:"structValues", :map, GoogleApi.BigQuery.V2.Model.QueryParameterValue, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.QueryParameterValue do
  def encode(value, options) do
    GoogleApi.BigQuery.V2.Deserializer.serialize_non_nil(value, options)
  end
end

