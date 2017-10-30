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

defmodule GoogleApi.BigQuery.V2.Model.DatasetListDatasets do
  @moduledoc """
  

  ## Attributes

  - datasetReference (DatasetReference): The dataset reference. Use this property to access specific parts of the dataset&#39;s ID, such as project ID or dataset ID. Defaults to: `null`.
  - friendlyName (String): A descriptive name for the dataset, if one exists. Defaults to: `null`.
  - id (String): The fully-qualified, unique, opaque ID of the dataset. Defaults to: `null`.
  - kind (String): The resource type. This property always returns the value \&quot;bigquery#dataset\&quot;. Defaults to: `null`.
  - labels (Map[String, String]): The labels associated with this dataset. You can use these to organize and group your datasets. Defaults to: `null`.
  """

  defstruct [
    :"datasetReference",
    :"friendlyName",
    :"id",
    :"kind",
    :"labels"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.DatasetListDatasets do
  import GoogleApi.BigQuery.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"datasetReference", :struct, GoogleApi.BigQuery.V2.Model.DatasetReference, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.DatasetListDatasets do
  def encode(value, options) do
    GoogleApi.BigQuery.V2.Deserializer.serialize_non_nil(value, options)
  end
end

