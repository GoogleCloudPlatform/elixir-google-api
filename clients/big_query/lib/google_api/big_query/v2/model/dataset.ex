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

defmodule GoogleApi.BigQuery.V2.Model.Dataset do
  @moduledoc """
  

  ## Attributes

  - access (List[DatasetAccess]): [Optional] An array of objects that define dataset access for one or more entities. You can set this property when inserting or updating a dataset in order to control who is allowed to access the data. If unspecified at dataset creation time, BigQuery adds default dataset access for the following entities: access.specialGroup: projectReaders; access.role: READER; access.specialGroup: projectWriters; access.role: WRITER; access.specialGroup: projectOwners; access.role: OWNER; access.userByEmail: [dataset creator email]; access.role: OWNER; Defaults to: `null`.
  - creationTime (String): [Output-only] The time when this dataset was created, in milliseconds since the epoch. Defaults to: `null`.
  - datasetReference (DatasetReference): [Required] A reference that identifies the dataset. Defaults to: `null`.
  - defaultTableExpirationMs (String): [Optional] The default lifetime of all tables in the dataset, in milliseconds. The minimum value is 3600000 milliseconds (one hour). Once this property is set, all newly-created tables in the dataset will have an expirationTime property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the expirationTime for a given table is reached, that table will be deleted automatically. If a table&#39;s expirationTime is modified or removed before the table expires, or if you provide an explicit expirationTime when creating a table, that value takes precedence over the default expiration time indicated by this property. Defaults to: `null`.
  - description (String): [Optional] A user-friendly description of the dataset. Defaults to: `null`.
  - etag (String): [Output-only] A hash of the resource. Defaults to: `null`.
  - friendlyName (String): [Optional] A descriptive name for the dataset. Defaults to: `null`.
  - id (String): [Output-only] The fully-qualified unique name of the dataset in the format projectId:datasetId. The dataset name without the project name is given in the datasetId field. When creating a new dataset, leave this field blank, and instead specify the datasetId field. Defaults to: `null`.
  - kind (String): [Output-only] The resource type. Defaults to: `null`.
  - labels (Map[String, String]): The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See Labeling Datasets for more information. Defaults to: `null`.
  - lastModifiedTime (String): [Output-only] The date when this dataset or any of its tables was last modified, in milliseconds since the epoch. Defaults to: `null`.
  - location (String): The geographic location where the dataset should reside. Possible values include EU and US. The default value is US. Defaults to: `null`.
  - selfLink (String): [Output-only] A URL that can be used to access the resource again. You can use this URL in Get or Update requests to the resource. Defaults to: `null`.
  """

  defstruct [
    :"access",
    :"creationTime",
    :"datasetReference",
    :"defaultTableExpirationMs",
    :"description",
    :"etag",
    :"friendlyName",
    :"id",
    :"kind",
    :"labels",
    :"lastModifiedTime",
    :"location",
    :"selfLink"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.Dataset do
  import GoogleApi.BigQuery.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"access", :list, GoogleApi.BigQuery.V2.Model.DatasetAccess, options)
    |> deserialize(:"datasetReference", :struct, GoogleApi.BigQuery.V2.Model.DatasetReference, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.Dataset do
  def encode(value, options) do
    GoogleApi.BigQuery.V2.Deserializer.serialize_non_nil(value, options)
  end
end

