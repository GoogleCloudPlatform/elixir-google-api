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

defmodule GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ImportEntitiesMetadata do
  @moduledoc """
  Metadata for ImportEntities operations.

  ## Attributes

  - common (GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1CommonMetadata.t): Metadata common to all Datastore Admin operations. Defaults to `nil`.
  - entityFilter (GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter.t): Description of which entities are being imported. Defaults to `nil`.
  - inputUrl (String.t): The location of the import metadata file. This will be the same value as
  the google.datastore.admin.v1.ExportEntitiesResponse.output_url field. Defaults to `nil`.
  - progressBytes (GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1Progress.t): An estimate of the number of bytes processed. Defaults to `nil`.
  - progressEntities (GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1Progress.t): An estimate of the number of entities processed. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :common => GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1CommonMetadata.t(),
          :entityFilter => GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter.t(),
          :inputUrl => String.t(),
          :progressBytes => GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1Progress.t(),
          :progressEntities => GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1Progress.t()
        }

  field(:common, as: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1CommonMetadata)
  field(:entityFilter, as: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter)
  field(:inputUrl)
  field(:progressBytes, as: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1Progress)
  field(:progressEntities, as: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1Progress)
end

defimpl Poison.Decoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ImportEntitiesMetadata do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ImportEntitiesMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ImportEntitiesMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
