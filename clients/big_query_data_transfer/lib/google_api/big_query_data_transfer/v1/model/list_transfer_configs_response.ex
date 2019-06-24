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

defmodule GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferConfigsResponse do
  @moduledoc """
  The returned list of pipelines in the project.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Output only. The next-pagination token. For multiple-page list results,
      this token can be used as the
      `ListTransferConfigsRequest.page_token`
      to request the next page of list results.
  *   `transferConfigs` (*type:* `list(GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig.t)`, *default:* `nil`) - Output only. The stored pipeline transfer configurations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :transferConfigs => list(GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig.t())
        }

  field(:nextPageToken)
  field(:transferConfigs, as: GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferConfigsResponse do
  def decode(value, options) do
    GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferConfigsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferConfigsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
