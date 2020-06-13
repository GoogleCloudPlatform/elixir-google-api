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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyTemplate do
  @moduledoc """
  DeidentifyTemplates contains instructions on how to de-identify content.
  See https://cloud.google.com/dlp/docs/concepts-templates to learn more.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation timestamp of an inspectTemplate.
  *   `deidentifyConfig` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyConfig.t`, *default:* `nil`) - ///////////// // The core content of the template  // ///////////////
  *   `description` (*type:* `String.t`, *default:* `nil`) - Short description (max 256 chars).
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name (max 256 chars).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The template name.

      The template will have one of the following formats:
      `projects/PROJECT_ID/deidentifyTemplates/TEMPLATE_ID` OR
      `organizations/ORGANIZATION_ID/deidentifyTemplates/TEMPLATE_ID`
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update timestamp of an inspectTemplate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :deidentifyConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyConfig.t(),
          :description => String.t(),
          :displayName => String.t(),
          :name => String.t(),
          :updateTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:deidentifyConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyConfig)
  field(:description)
  field(:displayName)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyTemplate do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
