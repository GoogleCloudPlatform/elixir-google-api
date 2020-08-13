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

defmodule GoogleApi.Firestore.V1.Model.BatchGetDocumentsResponse do
  @moduledoc """
  The streamed response for Firestore.BatchGetDocuments.

  ## Attributes

  *   `found` (*type:* `GoogleApi.Firestore.V1.Model.Document.t`, *default:* `nil`) - A document that was requested.
  *   `missing` (*type:* `String.t`, *default:* `nil`) - A document name that was requested but does not exist. In the format: `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  *   `readTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the document was read. This may be monotically increasing, in this case the previous documents in the result stream are guaranteed not to have changed between their read_time and this one.
  *   `transaction` (*type:* `String.t`, *default:* `nil`) - The transaction that was started as part of this request. Will only be set in the first response, and only if BatchGetDocumentsRequest.new_transaction was set in the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :found => GoogleApi.Firestore.V1.Model.Document.t(),
          :missing => String.t(),
          :readTime => DateTime.t(),
          :transaction => String.t()
        }

  field(:found, as: GoogleApi.Firestore.V1.Model.Document)
  field(:missing)
  field(:readTime, as: DateTime)
  field(:transaction)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.BatchGetDocumentsResponse do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.BatchGetDocumentsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.BatchGetDocumentsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
