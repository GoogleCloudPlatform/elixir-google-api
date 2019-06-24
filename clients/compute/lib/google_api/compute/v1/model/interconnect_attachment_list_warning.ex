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

defmodule GoogleApi.Compute.V1.Model.InterconnectAttachmentListWarning do
  @moduledoc """
  [Output Only] Informational warning message.

  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - [Output Only] A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  *   `data` (*type:* `list(GoogleApi.Compute.V1.Model.InterconnectAttachmentListWarningData.t)`, *default:* `nil`) - [Output Only] Metadata about this warning in key: value format. For example:
      "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  *   `message` (*type:* `String.t`, *default:* `nil`) - [Output Only] A human-readable description of the warning code.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t(),
          :data => list(GoogleApi.Compute.V1.Model.InterconnectAttachmentListWarningData.t()),
          :message => String.t()
        }

  field(:code)
  field(:data, as: GoogleApi.Compute.V1.Model.InterconnectAttachmentListWarningData, type: :list)
  field(:message)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachmentListWarning do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectAttachmentListWarning.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachmentListWarning do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
