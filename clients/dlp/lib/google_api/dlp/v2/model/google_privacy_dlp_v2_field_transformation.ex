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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldTransformation do
  @moduledoc """
  The transformation to apply to the field.

  ## Attributes

  *   `condition` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordCondition.t`, *default:* `nil`) - Only apply the transformation if the condition evaluates to true for the
      given `RecordCondition`. The conditions are allowed to reference fields
      that are not used in the actual transformation.

      Example Use Cases:

      - Apply a different bucket transformation to an age column if the zip code
      column for the same record is within a specific range.
      - Redact a field if the date of birth field is greater than 85.
  *   `fields` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t)`, *default:* `nil`) - Required. Input field(s) to apply the transformation to.
  *   `infoTypeTransformations` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeTransformations.t`, *default:* `nil`) - Treat the contents of the field as free text, and selectively
      transform content that matches an `InfoType`.
  *   `primitiveTransformation` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation.t`, *default:* `nil`) - Apply the transformation to the entire field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordCondition.t(),
          :fields => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t()),
          :infoTypeTransformations =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeTransformations.t(),
          :primitiveTransformation =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation.t()
        }

  field(:condition, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordCondition)
  field(:fields, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId, type: :list)

  field(:infoTypeTransformations,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeTransformations
  )

  field(:primitiveTransformation,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation
  )
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldTransformation do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldTransformation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldTransformation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
