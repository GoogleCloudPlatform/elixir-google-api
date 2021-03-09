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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig do
  @moduledoc """
  Configuration description of the scanning process. When used with redactContent only info_types and min_likelihood are currently used.

  ## Attributes

  *   `contentOptions` (*type:* `list(String.t)`, *default:* `nil`) - List of options defining data content to scan. If empty, text, images, and other content will be included.
  *   `customInfoTypes` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CustomInfoType.t)`, *default:* `nil`) - CustomInfoTypes provided by the user. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.
  *   `excludeInfoTypes` (*type:* `boolean()`, *default:* `nil`) - When true, excludes type information of the findings.
  *   `includeQuote` (*type:* `boolean()`, *default:* `nil`) - When true, a contextual quote from the data that triggered a finding is included in the response; see Finding.quote.
  *   `infoTypes` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t)`, *default:* `nil`) - Restricts what info_types to look for. The values must correspond to InfoType values returned by ListInfoTypes or listed at https://cloud.google.com/dlp/docs/infotypes-reference. When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated. If you need precise control and predictability as to what detectors are run you should specify specific InfoTypes listed in the reference, otherwise a default list will be used, which may change over time.
  *   `limits` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits.t`, *default:* `nil`) - Configuration to control the number of findings returned.
  *   `minLikelihood` (*type:* `String.t`, *default:* `nil`) - Only returns findings equal or above this threshold. The default is POSSIBLE. See https://cloud.google.com/dlp/docs/likelihood to learn more.
  *   `ruleSet` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectionRuleSet.t)`, *default:* `nil`) - Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end, other rules are executed in the order they are specified for each info type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentOptions => list(String.t()) | nil,
          :customInfoTypes =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CustomInfoType.t()) | nil,
          :excludeInfoTypes => boolean() | nil,
          :includeQuote => boolean() | nil,
          :infoTypes => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t()) | nil,
          :limits => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits.t() | nil,
          :minLikelihood => String.t() | nil,
          :ruleSet => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectionRuleSet.t()) | nil
        }

  field(:contentOptions, type: :list)

  field(:customInfoTypes, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CustomInfoType, type: :list)

  field(:excludeInfoTypes)
  field(:includeQuote)
  field(:infoTypes, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType, type: :list)
  field(:limits, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits)
  field(:minLikelihood)
  field(:ruleSet, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectionRuleSet, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
