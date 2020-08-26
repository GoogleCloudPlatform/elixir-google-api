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

defmodule GoogleApi.HealthCare.V1beta1.Model.InfoTypeTransformation do
  @moduledoc """
  A transformation to apply to text that is identified as a specific info_type.

  ## Attributes

  *   `characterMaskConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.CharacterMaskConfig.t`, *default:* `nil`) - Config for character mask.
  *   `cryptoHashConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.CryptoHashConfig.t`, *default:* `nil`) - Config for crypto hash.
  *   `dateShiftConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.DateShiftConfig.t`, *default:* `nil`) - Config for date shift.
  *   `infoTypes` (*type:* `list(String.t)`, *default:* `nil`) - InfoTypes to apply this transformation to. If this is not specified, this transformation becomes the default transformation, and is used for any info_type that is not specified in another transformation.
  *   `redactConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.RedactConfig.t`, *default:* `nil`) - Config for text redaction.
  *   `replaceWithInfoTypeConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.ReplaceWithInfoTypeConfig.t`, *default:* `nil`) - Config for replace with InfoType.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :characterMaskConfig => GoogleApi.HealthCare.V1beta1.Model.CharacterMaskConfig.t(),
          :cryptoHashConfig => GoogleApi.HealthCare.V1beta1.Model.CryptoHashConfig.t(),
          :dateShiftConfig => GoogleApi.HealthCare.V1beta1.Model.DateShiftConfig.t(),
          :infoTypes => list(String.t()),
          :redactConfig => GoogleApi.HealthCare.V1beta1.Model.RedactConfig.t(),
          :replaceWithInfoTypeConfig =>
            GoogleApi.HealthCare.V1beta1.Model.ReplaceWithInfoTypeConfig.t()
        }

  field(:characterMaskConfig, as: GoogleApi.HealthCare.V1beta1.Model.CharacterMaskConfig)
  field(:cryptoHashConfig, as: GoogleApi.HealthCare.V1beta1.Model.CryptoHashConfig)
  field(:dateShiftConfig, as: GoogleApi.HealthCare.V1beta1.Model.DateShiftConfig)
  field(:infoTypes, type: :list)
  field(:redactConfig, as: GoogleApi.HealthCare.V1beta1.Model.RedactConfig)

  field(:replaceWithInfoTypeConfig,
    as: GoogleApi.HealthCare.V1beta1.Model.ReplaceWithInfoTypeConfig
  )
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.InfoTypeTransformation do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.InfoTypeTransformation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.InfoTypeTransformation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
