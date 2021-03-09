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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SynthesizeSpeechConfig do
  @moduledoc """
  Configuration of how speech should be synthesized.

  ## Attributes

  *   `effectsProfileId` (*type:* `list(String.t)`, *default:* `nil`) - Optional. An identifier which selects 'audio effects' profiles that are applied on (post synthesized) text to speech. Effects are applied on top of each other in the order they are given.
  *   `pitch` (*type:* `float()`, *default:* `nil`) - Optional. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20 semitones from the original pitch. -20 means decrease 20 semitones from the original pitch.
  *   `speakingRate` (*type:* `float()`, *default:* `nil`) - Optional. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is the normal native speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0 speed. Any other values < 0.25 or > 4.0 will return an error.
  *   `voice` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2VoiceSelectionParams.t`, *default:* `nil`) - Optional. The desired voice of the synthesized audio.
  *   `volumeGainDb` (*type:* `float()`, *default:* `nil`) - Optional. Volume gain (in dB) of the normal native volume supported by the specific voice, in the range [-96.0, 16.0]. If unset, or set to a value of 0.0 (dB), will play at normal native signal amplitude. A value of -6.0 (dB) will play at approximately half the amplitude of the normal native signal amplitude. A value of +6.0 (dB) will play at approximately twice the amplitude of the normal native signal amplitude. We strongly recommend not to exceed +10 (dB) as there's usually no effective increase in loudness for any value greater than that.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :effectsProfileId => list(String.t()) | nil,
          :pitch => float() | nil,
          :speakingRate => float() | nil,
          :voice =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2VoiceSelectionParams.t() | nil,
          :volumeGainDb => float() | nil
        }

  field(:effectsProfileId, type: :list)
  field(:pitch)
  field(:speakingRate)
  field(:voice, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2VoiceSelectionParams)
  field(:volumeGainDb)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SynthesizeSpeechConfig do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SynthesizeSpeechConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SynthesizeSpeechConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
