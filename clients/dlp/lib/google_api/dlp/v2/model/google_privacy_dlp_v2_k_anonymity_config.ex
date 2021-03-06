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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityConfig do
  @moduledoc """
  k-anonymity metric, used for analysis of reidentification risk.

  ## Attributes

  *   `entityId` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2EntityId.t`, *default:* `nil`) - Message indicating that multiple rows might be associated to a single individual. If the same entity_id is associated to multiple quasi-identifier tuples over distinct rows, we consider the entire collection of tuples as the composite quasi-identifier. This collection is a multiset: the order in which the different tuples appear in the dataset is ignored, but their frequency is taken into account. Important note: a maximum of 1000 rows can be associated to a single entity ID. If more rows are associated with the same entity ID, some might be ignored.
  *   `quasiIds` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t)`, *default:* `nil`) - Set of fields to compute k-anonymity over. When multiple fields are specified, they are considered a single composite key. Structs and repeated data types are not supported; however, nested fields are supported so long as they are not structs themselves or nested within a repeated field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityId => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2EntityId.t() | nil,
          :quasiIds => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t()) | nil
        }

  field(:entityId, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2EntityId)
  field(:quasiIds, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
