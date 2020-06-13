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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookResponse do
  @moduledoc """
  The response message for a webhook call.

  ## Attributes

  *   `fulfillmentResponse` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse.t`, *default:* `nil`) - The fulfillment response to send to the user. This field can be omitted by
      the webhook if it does not intend to send any response to the user.
  *   `pageInfo` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfo.t`, *default:* `nil`) - Information about page status. This field can be omitted by the webhook if
      it does not intend to modify page status.
  *   `payload` (*type:* `map()`, *default:* `nil`) - Value to append directly to QueryResult.webhook_payloads.
  *   `sessionInfo` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1SessionInfo.t`, *default:* `nil`) - Information about session status. This field can be omitted by the webhook
      if it does not intend to modify session status.
  *   `targetFlow` (*type:* `String.t`, *default:* `nil`) - The target flow to transition to.
      Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
      ID>/flows/<Flow ID>`.
  *   `targetPage` (*type:* `String.t`, *default:* `nil`) - The target page to transition to.
      Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
      ID>/flows/<Flow ID>/pages/<Page ID>`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fulfillmentResponse =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse.t(),
          :pageInfo => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfo.t(),
          :payload => map(),
          :sessionInfo =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1SessionInfo.t(),
          :targetFlow => String.t(),
          :targetPage => String.t()
        }

  field(:fulfillmentResponse,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
  )

  field(:pageInfo, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfo)
  field(:payload, type: :map)
  field(:sessionInfo, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1SessionInfo)
  field(:targetFlow)
  field(:targetPage)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
