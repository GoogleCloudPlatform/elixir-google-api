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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LDiversityEquivalenceClass do
  @moduledoc """
  The set of columns' values that share the same ldiversity value.

  ## Attributes

  *   `equivalenceClassSize` (*type:* `String.t`, *default:* `nil`) - Size of the k-anonymity equivalence class.
  *   `numDistinctSensitiveValues` (*type:* `String.t`, *default:* `nil`) - Number of distinct sensitive values in this equivalence class.
  *   `quasiIdsValues` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Value.t)`, *default:* `nil`) - Quasi-identifier values defining the k-anonymity equivalence
      class. The order is always the same as the original request.
  *   `topSensitiveValues` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ValueFrequency.t)`, *default:* `nil`) - Estimated frequencies of top sensitive values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :equivalenceClassSize => String.t(),
          :numDistinctSensitiveValues => String.t(),
          :quasiIdsValues => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Value.t()),
          :topSensitiveValues => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ValueFrequency.t())
        }

  field(:equivalenceClassSize)
  field(:numDistinctSensitiveValues)
  field(:quasiIdsValues, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Value, type: :list)

  field(
    :topSensitiveValues,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ValueFrequency,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LDiversityEquivalenceClass do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LDiversityEquivalenceClass.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LDiversityEquivalenceClass do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
