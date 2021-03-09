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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput do
  @moduledoc """
  The input from the human user.

  ## Attributes

  *   `injectedParameters` (*type:* `map()`, *default:* `nil`) - Parameters that need to be injected into the conversation during intent detection.
  *   `input` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1QueryInput.t`, *default:* `nil`) - Supports text input, event input, dtmf input in the test case.
  *   `isWebhookEnabled` (*type:* `boolean()`, *default:* `nil`) - If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :injectedParameters => map() | nil,
          :input =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1QueryInput.t() | nil,
          :isWebhookEnabled => boolean() | nil
        }

  field(:injectedParameters, type: :map)
  field(:input, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1QueryInput)
  field(:isWebhookEnabled)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
