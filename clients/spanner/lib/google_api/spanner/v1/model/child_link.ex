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

defmodule GoogleApi.Spanner.V1.Model.ChildLink do
  @moduledoc """
  Metadata associated with a parent-child relationship appearing in a PlanNode.

  ## Attributes

  - childIndex (Integer): The node to which the link points. Defaults to: `null`.
  - type (String): The type of the link. For example, in Hash Joins this could be used to distinguish between the build child and the probe child, or in the case of the child being an output variable, to represent the tag associated with the output variable. Defaults to: `null`.
  - variable (String): Only present if the child node is SCALAR and corresponds to an output variable of the parent node. The field carries the name of the output variable. For example, a &#x60;TableScan&#x60; operator that reads rows from a table will have child links to the &#x60;SCALAR&#x60; nodes representing the output variables created for each column that is read by the operator. The corresponding &#x60;variable&#x60; fields will be set to the variable names assigned to the columns. Defaults to: `null`.
  """

  defstruct [
    :"childIndex",
    :"type",
    :"variable"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ChildLink do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ChildLink do
  def encode(value, options) do
    GoogleApi.Spanner.V1.Deserializer.serialize_non_nil(value, options)
  end
end

