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

defmodule GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexOperationMetadata do
  @moduledoc """
  Metadata for google.longrunning.Operation results from
  FirestoreAdmin.CreateIndex.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time this operation completed. Will be unset if operation still in
      progress.
  *   `index` (*type:* `String.t`, *default:* `nil`) - The index resource that this operation is acting on. For example:
      `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`
  *   `progressBytes` (*type:* `GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Progress.t`, *default:* `nil`) - The progress, in bytes, of this operation.
  *   `progressDocuments` (*type:* `GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Progress.t`, *default:* `nil`) - The progress, in documents, of this operation.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time this operation started.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of the operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t(),
          :index => String.t(),
          :progressBytes => GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Progress.t(),
          :progressDocuments => GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Progress.t(),
          :startTime => DateTime.t(),
          :state => String.t()
        }

  field(:endTime, as: DateTime)
  field(:index)
  field(:progressBytes, as: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Progress)
  field(:progressDocuments, as: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Progress)
  field(:startTime, as: DateTime)
  field(:state)
end

defimpl Poison.Decoder,
  for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexOperationMetadata do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
