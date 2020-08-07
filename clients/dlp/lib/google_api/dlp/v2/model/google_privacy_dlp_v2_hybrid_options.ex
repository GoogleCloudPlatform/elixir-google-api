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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridOptions do
  @moduledoc """
  Configuration to control jobs where the content being inspected is outside of Google Cloud Platform.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - A short description of where the data is coming from. Will be stored once in the job. 256 max length.
  *   `labels` (*type:* `map()`, *default:* `nil`) - To organize findings, these labels will be added to each finding. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. No more than 10 labels can be associated with a given finding. Examples: * `"environment" : "production"` * `"pipeline" : "etl"`
  *   `requiredFindingLabelKeys` (*type:* `list(String.t)`, *default:* `nil`) - These are labels that each inspection request must include within their 'finding_labels' map. Request may contain others, but any missing one of these will be rejected. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. No more than 10 keys can be required.
  *   `tableOptions` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TableOptions.t`, *default:* `nil`) - If the container is a table, additional information to make findings meaningful such as the columns that are primary keys.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :labels => map(),
          :requiredFindingLabelKeys => list(String.t()),
          :tableOptions => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TableOptions.t()
        }

  field(:description)
  field(:labels, type: :map)
  field(:requiredFindingLabelKeys, type: :list)
  field(:tableOptions, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TableOptions)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridOptions do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
