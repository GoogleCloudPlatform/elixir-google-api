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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelect do
  @moduledoc """
  The card for presenting a list of options to select from.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelectItem.t)`, *default:* `nil`) - Required. List items.
  *   `subtitle` (*type:* `String.t`, *default:* `nil`) - Optional. Subtitle of the list.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Optional. The overall title of the list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items =>
            list(
              GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelectItem.t()
            )
            | nil,
          :subtitle => String.t() | nil,
          :title => String.t() | nil
        }

  field(:items,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelectItem,
    type: :list
  )

  field(:subtitle)
  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelect do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelect.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelect do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
