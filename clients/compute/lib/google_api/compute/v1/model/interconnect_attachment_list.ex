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

defmodule GoogleApi.Compute.V1.Model.InterconnectAttachmentList do
  @moduledoc """
  Response to the list request, and contains a list of interconnect attachments.

  ## Attributes

  - id (String.t): [Output Only] Unique identifier for the resource; defined by the server. Defaults to `nil`.
  - items (list(GoogleApi.Compute.V1.Model.InterconnectAttachment.t)): A list of InterconnectAttachment resources. Defaults to `nil`.
  - kind (String.t): [Output Only] Type of resource. Always compute#interconnectAttachmentList for lists of interconnect attachments. Defaults to `compute#interconnectAttachmentList`.
  - nextPageToken (String.t): [Output Only] This token allows you to get the next page of results for list requests. If the number of results is larger than maxResults, use the nextPageToken as a value for the query parameter pageToken in the next list request. Subsequent list requests will have their own nextPageToken to continue paging through the results. Defaults to `nil`.
  - selfLink (String.t): [Output Only] Server-defined URL for this resource. Defaults to `nil`.
  - warning (GoogleApi.Compute.V1.Model.InterconnectAttachmentListWarning.t): [Output Only] Informational warning message. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :items => list(GoogleApi.Compute.V1.Model.InterconnectAttachment.t()),
          :kind => String.t(),
          :nextPageToken => String.t(),
          :selfLink => String.t(),
          :warning => GoogleApi.Compute.V1.Model.InterconnectAttachmentListWarning.t()
        }

  field(:id)
  field(:items, as: GoogleApi.Compute.V1.Model.InterconnectAttachment, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:selfLink)
  field(:warning, as: GoogleApi.Compute.V1.Model.InterconnectAttachmentListWarning)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachmentList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectAttachmentList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachmentList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
