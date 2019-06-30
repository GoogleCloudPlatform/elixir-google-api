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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Location do
  @moduledoc """
  Specifies the location of the finding.

  ## Attributes

  *   `byteRange` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Range.t`, *default:* `nil`) - Zero-based byte offsets delimiting the finding.
      These are relative to the finding's containing element.
      Note that when the content is not textual, this references
      the UTF-8 encoded textual representation of the content.
      Omitted if content is an image.
  *   `codepointRange` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Range.t`, *default:* `nil`) - Unicode character offsets delimiting the finding.
      These are relative to the finding's containing element.
      Provided when the content is text.
  *   `contentLocations` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentLocation.t)`, *default:* `nil`) - List of nested objects pointing to the precise location of the finding
      within the file or record.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :byteRange => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Range.t(),
          :codepointRange => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Range.t(),
          :contentLocations => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentLocation.t())
        }

  field(:byteRange, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Range)
  field(:codepointRange, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Range)

  field(
    :contentLocations,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentLocation,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Location do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Location.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Location do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
