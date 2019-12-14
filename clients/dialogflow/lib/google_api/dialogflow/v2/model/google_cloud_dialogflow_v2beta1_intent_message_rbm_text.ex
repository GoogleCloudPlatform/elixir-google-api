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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmText do
  @moduledoc """
  Rich Business Messaging (RBM) text response with suggestions.

  ## Attributes

  *   `rbmSuggestion` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.t)`, *default:* `nil`) - Optional. One or more suggestions to show to the user.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Required. Text sent and displayed to the user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rbmSuggestion =>
            list(
              GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.t()
            ),
          :text => String.t()
        }

  field(:rbmSuggestion,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion,
    type: :list
  )

  field(:text)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmText do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmText.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmText do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
