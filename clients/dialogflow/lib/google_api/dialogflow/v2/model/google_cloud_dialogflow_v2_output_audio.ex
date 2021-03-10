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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudio do
  @moduledoc """
  Represents the natural language speech audio to be played to the end user.

  ## Attributes

  *   `audio` (*type:* `String.t`, *default:* `nil`) - The natural language speech audio.
  *   `config` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig.t`, *default:* `nil`) - Instructs the speech synthesizer how to generate the speech audio.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audio => String.t() | nil,
          :config =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig.t() | nil
        }

  field(:audio)
  field(:config, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudio do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudio.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudio do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
