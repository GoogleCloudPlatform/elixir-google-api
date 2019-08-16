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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig do
  @moduledoc """


  ## Attributes

  *   `actions` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action.t)`, *default:* `nil`) - Actions to execute at the completion of the job.
  *   `inspectConfig` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig.t`, *default:* `nil`) - How and what to scan for.
  *   `inspectTemplateName` (*type:* `String.t`, *default:* `nil`) - If provided, will be used as the default for all values in InspectConfig.
      `inspect_config` will be merged into the values persisted as part of the
      template.
  *   `storageConfig` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StorageConfig.t`, *default:* `nil`) - The data to scan.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actions => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action.t()),
          :inspectConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig.t(),
          :inspectTemplateName => String.t(),
          :storageConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StorageConfig.t()
        }

  field(:actions, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action, type: :list)
  field(:inspectConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig)
  field(:inspectTemplateName)
  field(:storageConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StorageConfig)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
