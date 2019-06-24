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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2WebhookResponse do
  @moduledoc """
  The response message for a webhook call.

  ## Attributes

  *   `followupEventInput` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EventInput.t`, *default:* `nil`) - Optional. Makes the platform immediately invoke another `DetectIntent` call
      internally with the specified event as input.
      When this field is set, Dialogflow ignores the `fulfillment_text`,
      `fulfillment_messages`, and `payload` fields.
  *   `fulfillmentMessages` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessage.t)`, *default:* `nil`) - Optional. The collection of rich messages to present to the user. This
      value is passed directly to `QueryResult.fulfillment_messages`.
  *   `fulfillmentText` (*type:* `String.t`, *default:* `nil`) - Optional. The text to be shown on the screen. This value is passed directly
      to `QueryResult.fulfillment_text`.
  *   `outputContexts` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context.t)`, *default:* `nil`) - Optional. The collection of output contexts. This value is passed directly
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
  *   `source` (*type:* `String.t`, *default:* `nil`) - Optional. This value is passed directly to `QueryResult.webhook_source`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :followupEventInput =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EventInput.t(),
          :fulfillmentMessages =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessage.t()),
          :fulfillmentText => String.t(),
          :outputContexts =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context.t()),
          :payload => map(),
          :source => String.t()
        }

  field(:followupEventInput, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EventInput)

  field(
    :fulfillmentMessages,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessage,
    type: :list
  )

  field(:fulfillmentText)

  field(
    :outputContexts,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context,
    type: :list
  )

  field(:payload, type: :map)
  field(:source)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2WebhookResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2WebhookResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2WebhookResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
