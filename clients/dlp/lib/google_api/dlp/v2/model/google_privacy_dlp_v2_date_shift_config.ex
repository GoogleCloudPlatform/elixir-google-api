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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DateShiftConfig do
  @moduledoc """
  Shifts dates by random number of days, with option to be consistent for the
  same context. See https://cloud.google.com/dlp/docs/concepts-date-shifting
  to learn more.

  ## Attributes

  *   `context` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t`, *default:* `nil`) - Points to the field that contains the context, for example, an entity id.
      If set, must also set method. If set, shift will be consistent for the
      given context.
  *   `cryptoKey` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoKey.t`, *default:* `nil`) - Causes the shift to be computed based on this key and the context. This
      results in the same shift for the same context and crypto_key.
  *   `lowerBoundDays` (*type:* `integer()`, *default:* `nil`) - For example, -5 means shift date to at most 5 days back in the past.
      [Required]
  *   `upperBoundDays` (*type:* `integer()`, *default:* `nil`) - Range of shift in days. Actual shift will be selected at random within this
      range (inclusive ends). Negative means shift to earlier in time. Must not
      be more than 365250 days (1000 years) each direction.

      For example, 3 means shift date to at most 3 days into the future.
      [Required]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :context => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t(),
          :cryptoKey => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoKey.t(),
          :lowerBoundDays => integer(),
          :upperBoundDays => integer()
        }

  field(:context, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId)
  field(:cryptoKey, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoKey)
  field(:lowerBoundDays)
  field(:upperBoundDays)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DateShiftConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DateShiftConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DateShiftConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
