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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityType do
  @moduledoc """
  Represents an entity type.
  Entity types serve as a tool for extracting parameter values from natural
  language queries.

  ## Attributes

  *   `autoExpansionMode` (*type:* `String.t`, *default:* `nil`) - Optional. Indicates whether the entity type can be automatically
      expanded.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The name of the entity type.
  *   `entities` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityTypeEntity.t)`, *default:* `nil`) - Optional. The collection of entity entries associated with the entity type.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Required. Indicates the kind of entity type.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the entity type.
      Required for EntityTypes.UpdateEntityType and
      EntityTypes.BatchUpdateEntityTypes methods.
      Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoExpansionMode => String.t(),
          :displayName => String.t(),
          :entities =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityTypeEntity.t()),
          :kind => String.t(),
          :name => String.t()
        }

  field(:autoExpansionMode)
  field(:displayName)

  field(
    :entities,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityTypeEntity,
    type: :list
  )

  field(:kind)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityType do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
