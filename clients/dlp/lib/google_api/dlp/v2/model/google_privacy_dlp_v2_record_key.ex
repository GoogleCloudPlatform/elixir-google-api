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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordKey do
  @moduledoc """
  Message for a unique key indicating a record that contains a finding.

  ## Attributes

  *   `bigQueryKey` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryKey.t`, *default:* `nil`) - 
  *   `datastoreKey` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DatastoreKey.t`, *default:* `nil`) - 
  *   `idValues` (*type:* `list(String.t)`, *default:* `nil`) - Values of identifying columns in the given row. Order of values matches
      the order of field identifiers specified in the scanning request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigQueryKey => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryKey.t(),
          :datastoreKey => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DatastoreKey.t(),
          :idValues => list(String.t())
        }

  field(:bigQueryKey, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryKey)
  field(:datastoreKey, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DatastoreKey)
  field(:idValues, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordKey do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
