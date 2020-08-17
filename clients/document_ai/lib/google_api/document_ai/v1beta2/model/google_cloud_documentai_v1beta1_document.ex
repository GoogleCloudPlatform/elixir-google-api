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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1Document do
  @moduledoc """
  Document represents the canonical document resource in Document Understanding
  AI.
  It is an interchange format that provides insights into documents and allows
  for collaboration between users and Document Understanding AI to iterate and
  optimize for quality.

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - Inline document content, represented as a stream of bytes.
      Note: As with all `bytes` fields, protobuffers use a pure binary
      representation, whereas JSON representations use base64.
  *   `entities` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentEntity.t)`, *default:* `nil`) - A list of entities detected on Document.text. For document shards,
      entities in this list may cross shard boundaries.
  *   `entityRelations` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentEntityRelation.t)`, *default:* `nil`) - Relationship among Document.entities.
  *   `error` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleRpcStatus.t`, *default:* `nil`) - Any error that occurred while processing this document.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - An IANA published MIME type (also referred to as media type). For more
      information, see
      https://www.iana.org/assignments/media-types/media-types.xhtml.
  *   `pages` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPage.t)`, *default:* `nil`) - Visual page layout for the Document.
  *   `shardInfo` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentShardInfo.t`, *default:* `nil`) - Information about the sharding if this document is sharded part of a larger
      document. If the document is not sharded, this message is not specified.
  *   `text` (*type:* `String.t`, *default:* `nil`) - UTF-8 encoded text in reading order from the document.
  *   `textStyles` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentStyle.t)`, *default:* `nil`) - Styles for the Document.text.
  *   `translations` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentTranslation.t)`, *default:* `nil`) - A list of translations on Document.text. For document shards,
      translations in this list may cross shard boundaries.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Currently supports Google Cloud Storage URI of the form
         `gs://bucket_name/object_name`. Object versioning is not supported.
         See [Google Cloud Storage Request
         URIs](https://cloud.google.com/storage/docs/reference-uris) for more
         info.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t(),
          :entities =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentEntity.t()
            ),
          :entityRelations =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentEntityRelation.t()
            ),
          :error => GoogleApi.DocumentAI.V1beta2.Model.GoogleRpcStatus.t(),
          :mimeType => String.t(),
          :pages =>
            list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPage.t()),
          :shardInfo =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentShardInfo.t(),
          :text => String.t(),
          :textStyles =>
            list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentStyle.t()),
          :translations =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentTranslation.t()
            ),
          :uri => String.t()
        }

  field(:content)

  field(:entities,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentEntity,
    type: :list
  )

  field(:entityRelations,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentEntityRelation,
    type: :list
  )

  field(:error, as: GoogleApi.DocumentAI.V1beta2.Model.GoogleRpcStatus)
  field(:mimeType)

  field(:pages,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPage,
    type: :list
  )

  field(:shardInfo,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentShardInfo
  )

  field(:text)

  field(:textStyles,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentStyle,
    type: :list
  )

  field(:translations,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentTranslation,
    type: :list
  )

  field(:uri)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1Document do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1Document.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1Document do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
