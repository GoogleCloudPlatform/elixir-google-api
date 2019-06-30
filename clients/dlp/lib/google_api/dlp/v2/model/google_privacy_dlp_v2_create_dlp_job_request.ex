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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateDlpJobRequest do
  @moduledoc """
  Request message for CreateDlpJobRequest. Used to initiate long running
  jobs such as calculating risk metrics or inspecting Google Cloud
  Storage.

  ## Attributes

  *   `inspectJob` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig.t`, *default:* `nil`) - 
  *   `jobId` (*type:* `String.t`, *default:* `nil`) - The job id can contain uppercase and lowercase letters,
      numbers, and hyphens; that is, it must match the regular
      expression: `[a-zA-Z\\d-_]+`. The maximum length is 100
      characters. Can be empty to allow the system to generate one.
  *   `riskJob` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RiskAnalysisJobConfig.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inspectJob => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig.t(),
          :jobId => String.t(),
          :riskJob => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RiskAnalysisJobConfig.t()
        }

  field(:inspectJob, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig)
  field(:jobId)
  field(:riskJob, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RiskAnalysisJobConfig)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateDlpJobRequest do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateDlpJobRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateDlpJobRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
