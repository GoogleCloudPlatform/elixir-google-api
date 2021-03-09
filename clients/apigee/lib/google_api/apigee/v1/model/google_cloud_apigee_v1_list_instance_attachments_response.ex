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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ListInstanceAttachmentsResponse do
  @moduledoc """
  Response for ListInstanceAttachments.

  ## Attributes

  *   `attachments` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceAttachment.t)`, *default:* `nil`) - Attachments for the instance.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Page token that you can include in a ListInstanceAttachments request to retrieve the next page of content. If omitted, no subsequent pages exist.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attachments =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceAttachment.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:attachments,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceAttachment,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ListInstanceAttachmentsResponse do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ListInstanceAttachmentsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ListInstanceAttachmentsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
