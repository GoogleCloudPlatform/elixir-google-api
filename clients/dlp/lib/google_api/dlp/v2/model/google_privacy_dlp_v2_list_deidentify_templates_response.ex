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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse do
  @moduledoc """
  Response message for ListDeidentifyTemplates.

  ## Attributes

  *   `deidentifyTemplates` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyTemplate.t)`, *default:* `nil`) - List of deidentify templates, up to page_size in
      ListDeidentifyTemplatesRequest.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If the next page is available then the next page token to be used
      in following ListDeidentifyTemplates request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deidentifyTemplates =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyTemplate.t()),
          :nextPageToken => String.t()
        }

  field(
    :deidentifyTemplates,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyTemplate,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
