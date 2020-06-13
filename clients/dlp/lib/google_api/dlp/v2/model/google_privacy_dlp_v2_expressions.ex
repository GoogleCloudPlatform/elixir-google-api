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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Expressions do
  @moduledoc """
  An expression, consisting or an operator and conditions.

  ## Attributes

  *   `conditions` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Conditions.t`, *default:* `nil`) - Conditions to apply to the expression.
  *   `logicalOperator` (*type:* `String.t`, *default:* `nil`) - The operator to apply to the result of conditions. Default and currently
      only supported value is `AND`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conditions => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Conditions.t(),
          :logicalOperator => String.t()
        }

  field(:conditions, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Conditions)
  field(:logicalOperator)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Expressions do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Expressions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Expressions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
