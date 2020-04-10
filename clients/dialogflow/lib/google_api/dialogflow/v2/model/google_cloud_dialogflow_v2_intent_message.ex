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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessage do
  @moduledoc """
  A rich response message.
  Corresponds to the intent `Response` field in the Dialogflow console.
  For more information, see
  [Rich response
  messages](https://cloud.google.com/dialogflow/docs/intents-rich-messages).

  ## Attributes

  *   `basicCard` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBasicCard.t`, *default:* `nil`) - The basic card response for Actions on Google.
  *   `browseCarouselCard` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.t`, *default:* `nil`) - Browse carousel card for Actions on Google.
  *   `card` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCard.t`, *default:* `nil`) - The card response.
  *   `carouselSelect` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCarouselSelect.t`, *default:* `nil`) - The carousel card response for Actions on Google.
  *   `image` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageImage.t`, *default:* `nil`) - The image response.
  *   `linkOutSuggestion` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.t`, *default:* `nil`) - The link out suggestion chip for Actions on Google.
  *   `listSelect` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelect.t`, *default:* `nil`) - The list card response for Actions on Google.
  *   `mediaContent` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageMediaContent.t`, *default:* `nil`) - The media content card for Actions on Google.
  *   `payload` (*type:* `map()`, *default:* `nil`) - A custom platform-specific response.
  *   `platform` (*type:* `String.t`, *default:* `nil`) - Optional. The platform that this message is intended for.
  *   `quickReplies` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageQuickReplies.t`, *default:* `nil`) - The quick replies response.
  *   `simpleResponses` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSimpleResponses.t`, *default:* `nil`) - The voice and text-only responses for Actions on Google.
  *   `suggestions` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSuggestions.t`, *default:* `nil`) - The suggestion chips for Actions on Google.
  *   `tableCard` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageTableCard.t`, *default:* `nil`) - Table card for Actions on Google.
  *   `text` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageText.t`, *default:* `nil`) - The text response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basicCard =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBasicCard.t(),
          :browseCarouselCard =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.t(),
          :card => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCard.t(),
          :carouselSelect =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCarouselSelect.t(),
          :image => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageImage.t(),
          :linkOutSuggestion =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.t(),
          :listSelect =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelect.t(),
          :mediaContent =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageMediaContent.t(),
          :payload => map(),
          :platform => String.t(),
          :quickReplies =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageQuickReplies.t(),
          :simpleResponses =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSimpleResponses.t(),
          :suggestions =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSuggestions.t(),
          :tableCard =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageTableCard.t(),
          :text => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageText.t()
        }

  field(:basicCard,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBasicCard
  )

  field(:browseCarouselCard,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard
  )

  field(:card, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCard)

  field(:carouselSelect,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCarouselSelect
  )

  field(:image, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageImage)

  field(:linkOutSuggestion,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
  )

  field(:listSelect,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelect
  )

  field(:mediaContent,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageMediaContent
  )

  field(:payload, type: :map)
  field(:platform)

  field(:quickReplies,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageQuickReplies
  )

  field(:simpleResponses,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSimpleResponses
  )

  field(:suggestions,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSuggestions
  )

  field(:tableCard,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageTableCard
  )

  field(:text, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageText)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessage do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
