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

defmodule GoogleApi.Calendar.V3.Model.EventAttachment do
  @moduledoc """


  ## Attributes

  *   `fileId` (*type:* `String.t`, *default:* `nil`) - ID of the attached file. Read-only.
      For Google Drive files, this is the ID of the corresponding Files resource entry in the Drive API.
  *   `fileUrl` (*type:* `String.t`, *default:* `nil`) - URL link to the attachment.
      For adding Google Drive file attachments use the same format as in alternateLink property of the Files resource in the Drive API.
      Required when adding an attachment.
  *   `iconLink` (*type:* `String.t`, *default:* `nil`) - URL link to the attachment's icon. Read-only.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - Internet media type (MIME type) of the attachment.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Attachment title.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fileId => String.t() | nil,
          :fileUrl => String.t() | nil,
          :iconLink => String.t() | nil,
          :mimeType => String.t() | nil,
          :title => String.t() | nil
        }

  field(:fileId)
  field(:fileUrl)
  field(:iconLink)
  field(:mimeType)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.EventAttachment do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.EventAttachment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.EventAttachment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
