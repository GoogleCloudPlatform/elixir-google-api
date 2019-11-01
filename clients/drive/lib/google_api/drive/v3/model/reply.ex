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

defmodule GoogleApi.Drive.V3.Model.Reply do
  @moduledoc """
  A reply to a comment on a file.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - The action the reply performed to the parent comment. Valid values are:  
      - resolve 
      - reopen
  *   `author` (*type:* `GoogleApi.Drive.V3.Model.User.t`, *default:* `nil`) - The author of the reply. The author's email address and permission ID will not be populated.
  *   `content` (*type:* `String.t`, *default:* `nil`) - The plain text content of the reply. This field is used for setting the content, while htmlContent should be displayed. This is required on creates if no action is specified.
  *   `createdTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the reply was created (RFC 3339 date-time).
  *   `deleted` (*type:* `boolean()`, *default:* `nil`) - Whether the reply has been deleted. A deleted reply has no content.
  *   `htmlContent` (*type:* `String.t`, *default:* `nil`) - The content of the reply with HTML formatting.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the reply.
  *   `kind` (*type:* `String.t`, *default:* `drive#reply`) - Identifies what kind of resource this is. Value: the fixed string "drive#reply".
  *   `modifiedTime` (*type:* `DateTime.t`, *default:* `nil`) - The last time the reply was modified (RFC 3339 date-time).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t(),
          :author => GoogleApi.Drive.V3.Model.User.t(),
          :content => String.t(),
          :createdTime => DateTime.t(),
          :deleted => boolean(),
          :htmlContent => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :modifiedTime => DateTime.t()
        }

  field(:action)
  field(:author, as: GoogleApi.Drive.V3.Model.User)
  field(:content)
  field(:createdTime, as: DateTime)
  field(:deleted)
  field(:htmlContent)
  field(:id)
  field(:kind)
  field(:modifiedTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.Reply do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.Reply.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.Reply do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
