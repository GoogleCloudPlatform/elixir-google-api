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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityEquivalenceClass do
  @moduledoc """
  The set of columns' values that share the same ldiversity value

  ## Attributes

  *   `equivalenceClassSize` (*type:* `String.t`, *default:* `nil`) - Size of the equivalence class, for example number of rows with the
      above set of values.
  *   `quasiIdsValues` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Value.t)`, *default:* `nil`) - Set of values defining the equivalence class. One value per
      quasi-identifier column in the original KAnonymity metric message.
      The order is always the same as the original request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :equivalenceClassSize => String.t(),
          :quasiIdsValues => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Value.t())
        }

  field(:equivalenceClassSize)
  field(:quasiIdsValues, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Value, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityEquivalenceClass do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityEquivalenceClass.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityEquivalenceClass do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
