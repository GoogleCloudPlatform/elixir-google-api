# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CategoricalStatsConfig do
  @moduledoc """
  Compute numerical stats over an individual column, including
  number of distinct values and value count distribution.

  ## Attributes

  *   `field` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t`, *default:* `nil`) - Field to compute categorical stats on. All column types are
      supported except for arrays and structs. However, it may be more
      informative to use NumericalStats when the field type is supported,
      depending on the data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :field => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t()
        }

  field(:field, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CategoricalStatsConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CategoricalStatsConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CategoricalStatsConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
