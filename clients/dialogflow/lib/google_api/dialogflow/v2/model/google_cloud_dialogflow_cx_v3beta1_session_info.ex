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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1SessionInfo do
  @moduledoc """
  Represents session information communicated to and from the webhook.

  ## Attributes

  *   `parameters` (*type:* `map()`, *default:* `nil`) - Optional for WebhookRequest. Optional for WebhookResponse.
      All parameters collected from forms and intents during the session.
      Parameters can be created, updated, or removed by the webhook. To remove a
      parameter from the session, the webhook should explicitly set the parameter
      value to null in WebhookResponse. The map is keyed by parameters'
      display names.
  *   `session` (*type:* `String.t`, *default:* `nil`) - Always present for WebhookRequest. Ignored for WebhookResponse.
      The unique identifier of the session. This
      field can be used by the webhook to identify a user.
      Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
      ID>/sessions/<Session ID>`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameters => map(),
          :session => String.t()
        }

  field(:parameters, type: :map)
  field(:session)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1SessionInfo do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1SessionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1SessionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
