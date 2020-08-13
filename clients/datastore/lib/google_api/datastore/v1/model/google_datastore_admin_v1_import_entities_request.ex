# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ImportEntitiesRequest do
  @moduledoc """
  The request for google.datastore.admin.v1.DatastoreAdmin.ImportEntities.

  ## Attributes

  *   `entityFilter` (*type:* `GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter.t`, *default:* `nil`) - Optionally specify which kinds/namespaces are to be imported. If provided, the list must be a subset of the EntityFilter used in creating the export, otherwise a FAILED_PRECONDITION error will be returned. If no filter is specified then all entities from the export are imported.
  *   `inputUrl` (*type:* `String.t`, *default:* `nil`) - Required. The full resource URL of the external storage location. Currently, only Google Cloud Storage is supported. So input_url should be of the form: `gs://BUCKET_NAME[/NAMESPACE_PATH]/OVERALL_EXPORT_METADATA_FILE`, where `BUCKET_NAME` is the name of the Cloud Storage bucket, `NAMESPACE_PATH` is an optional Cloud Storage namespace path (this is not a Cloud Datastore namespace), and `OVERALL_EXPORT_METADATA_FILE` is the metadata file written by the ExportEntities operation. For more information about Cloud Storage namespace paths, see [Object name considerations](https://cloud.google.com/storage/docs/naming#object-considerations). For more information, see google.datastore.admin.v1.ExportEntitiesResponse.output_url.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Client-assigned labels.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityFilter => GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter.t(),
          :inputUrl => String.t(),
          :labels => map()
        }

  field(:entityFilter, as: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter)
  field(:inputUrl)
  field(:labels, type: :map)
end

defimpl Poison.Decoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ImportEntitiesRequest do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ImportEntitiesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ImportEntitiesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
