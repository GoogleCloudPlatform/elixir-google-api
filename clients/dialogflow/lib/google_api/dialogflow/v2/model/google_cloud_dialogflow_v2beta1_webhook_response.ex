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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1WebhookResponse do
  @moduledoc """
  The response message for a webhook call.

  ## Attributes

  *   `endInteraction` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates that this intent ends an interaction. Some integrations
      (e.g., Actions on Google or Dialogflow phone gateway) use this information
      to close interaction with an end user. Default is false.
  *   `followupEventInput` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EventInput.t`, *default:* `nil`) - Optional. Makes the platform immediately invoke another `DetectIntent` call
      internally with the specified event as input.
      When this field is set, Dialogflow ignores the `fulfillment_text`,
      `fulfillment_messages`, and `payload` fields.
  *   `fulfillmentMessages` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage.t)`, *default:* `nil`) - Optional. The collection of rich messages to present to the user. This
      value is passed directly to `QueryResult.fulfillment_messages`.
  *   `fulfillmentText` (*type:* `String.t`, *default:* `nil`) - Optional. The text to be shown on the screen. This value is passed directly
      to `QueryResult.fulfillment_text`.
  *   `outputContexts` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1Context.t)`, *default:* `nil`) - Optional. The collection of output contexts. This value is passed directly
      to `QueryResult.output_contexts`.
  *   `payload` (*type:* `map()`, *default:* `nil`) - Optional. This value is passed directly to `QueryResult.webhook_payload`.
      See the related `fulfillment_messages[i].payload field`, which may be used
      as an alternative to this field.

      This field can be used for Actions on Google responses.
      It should have a structure similar to the JSON message shown here. For more
      information, see
      [Actions on Google Webhook
      Format](https://developers.google.com/actions/dialogflow/webhook)
      <pre>{
        "google": {
          "expectUserResponse": true,
          "richResponse": {
            "items": [
              {
                "simpleResponse": {
                  "textToSpeech": "this is a simple response"
                }
              }
            ]
          }
        }
      }</pre>
  *   `sessionEntityTypes` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SessionEntityType.t)`, *default:* `nil`) - Optional. Additional session entity types to replace or extend developer
      entity types with. The entity synonyms apply to all languages and persist
      for the session of this query. Setting the session entity types inside
      webhook overwrites the session entity types that have been set through
      `DetectIntentRequest.query_params.session_entity_types`.
  *   `source` (*type:* `String.t`, *default:* `nil`) - Optional. This value is passed directly to `QueryResult.webhook_source`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endInteraction => boolean(),
          :followupEventInput =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EventInput.t(),
          :fulfillmentMessages =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage.t()),
          :fulfillmentText => String.t(),
          :outputContexts =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1Context.t()),
          :payload => map(),
          :sessionEntityTypes =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SessionEntityType.t()),
          :source => String.t()
        }

  field(:endInteraction)

  field(:followupEventInput,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EventInput
  )

  field(:fulfillmentMessages,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage,
    type: :list
  )

  field(:fulfillmentText)

  field(:outputContexts,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1Context,
    type: :list
  )

  field(:payload, type: :map)

  field(:sessionEntityTypes,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SessionEntityType,
    type: :list
  )

  field(:source)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1WebhookResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1WebhookResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1WebhookResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
