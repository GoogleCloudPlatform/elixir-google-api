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

defmodule GoogleApi.BigQuery.V2.Model.TableFieldSchema do
  @moduledoc """
  

  ## Attributes

  - description (String): [Optional] The field description. The maximum length is 1,024 characters. Defaults to: `null`.
  - fields (List[TableFieldSchema]): [Optional] Describes the nested schema fields if the type property is set to RECORD. Defaults to: `null`.
  - mode (String): [Optional] The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NULLABLE. Defaults to: `null`.
  - name (String): [Required] The field name. The name must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum length is 128 characters. Defaults to: `null`.
  - type (String): [Required] The field data type. Possible values include STRING, BYTES, INTEGER, INT64 (same as INTEGER), FLOAT, FLOAT64 (same as FLOAT), BOOLEAN, BOOL (same as BOOLEAN), TIMESTAMP, DATE, TIME, DATETIME, RECORD (where RECORD indicates that the field contains a nested schema) or STRUCT (same as RECORD). Defaults to: `null`.
  """

  defstruct [
    :"description",
    :"fields",
    :"mode",
    :"name",
    :"type"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableFieldSchema do
  import GoogleApi.BigQuery.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"fields", :list, GoogleApi.BigQuery.V2.Model.TableFieldSchema, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableFieldSchema do
  def encode(value, options) do
    GoogleApi.BigQuery.V2.Deserializer.serialize_non_nil(value, options)
  end
end

