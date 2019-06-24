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

defmodule GoogleApi.BigQuery.V2.Model.StandardSqlDataType do
  @moduledoc """
  The type of a variable, e.g., a function argument.
  Examples:
  INT64: {type_kind="INT64"}
  ARRAY<STRING>: {type_kind="ARRAY", array_element_type="STRING"}
  STRUCT<x STRING, y ARRAY<DATE>>:
    {type_kind="STRUCT",
     struct_type={fields=[
       {name="x", type={type_kind="STRING"}},
       {name="y", type={type_kind="ARRAY", array_element_type="DATE"}}
     ]}}

  ## Attributes

  *   `arrayElementType` (*type:* `GoogleApi.BigQuery.V2.Model.StandardSqlDataType.t`, *default:* `nil`) - The type of the array's elements, if type_kind = "ARRAY".
  *   `structType` (*type:* `GoogleApi.BigQuery.V2.Model.StandardSqlStructType.t`, *default:* `nil`) - The fields of this struct, in order, if type_kind = "STRUCT".
  *   `typeKind` (*type:* `String.t`, *default:* `nil`) - Required. The top level type of this field.
      Can be any standard SQL data type (e.g., "INT64", "DATE", "ARRAY").
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arrayElementType => GoogleApi.BigQuery.V2.Model.StandardSqlDataType.t(),
          :structType => GoogleApi.BigQuery.V2.Model.StandardSqlStructType.t(),
          :typeKind => String.t()
        }

  field(:arrayElementType, as: GoogleApi.BigQuery.V2.Model.StandardSqlDataType)
  field(:structType, as: GoogleApi.BigQuery.V2.Model.StandardSqlStructType)
  field(:typeKind)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.StandardSqlDataType do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.StandardSqlDataType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.StandardSqlDataType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
