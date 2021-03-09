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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCard do
  @moduledoc """
  The card response message.

  ## Attributes

  *   `buttons` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCardButton.t)`, *default:* `nil`) - Optional. The collection of card buttons.
  *   `imageUri` (*type:* `String.t`, *default:* `nil`) - Optional. The public URI to an image file for the card.
  *   `subtitle` (*type:* `String.t`, *default:* `nil`) - Optional. The subtitle of the card.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Optional. The title of the card.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buttons =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCardButton.t())
            | nil,
          :imageUri => String.t() | nil,
          :subtitle => String.t() | nil,
          :title => String.t() | nil
        }

  field(:buttons,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCardButton,
    type: :list
  )

  field(:imageUri)
  field(:subtitle)
  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCard do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCard.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCard do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
