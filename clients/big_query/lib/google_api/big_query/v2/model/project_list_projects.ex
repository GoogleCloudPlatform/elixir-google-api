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

defmodule GoogleApi.BigQuery.V2.Model.ProjectListProjects do
  @moduledoc """
  

  ## Attributes

  - friendlyName (String): A descriptive name for this project. Defaults to: `null`.
  - id (String): An opaque ID of this project. Defaults to: `null`.
  - kind (String): The resource type. Defaults to: `null`.
  - numericId (String): The numeric ID of this project. Defaults to: `null`.
  - projectReference (ProjectReference): A unique reference to this project. Defaults to: `null`.
  """

  defstruct [
    :"friendlyName",
    :"id",
    :"kind",
    :"numericId",
    :"projectReference"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.ProjectListProjects do
  import GoogleApi.BigQuery.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"projectReference", :struct, GoogleApi.BigQuery.V2.Model.ProjectReference, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.ProjectListProjects do
  def encode(value, options) do
    GoogleApi.BigQuery.V2.Deserializer.serialize_non_nil(value, options)
  end
end

