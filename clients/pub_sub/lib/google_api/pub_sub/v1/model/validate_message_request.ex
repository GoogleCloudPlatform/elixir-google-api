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

defmodule GoogleApi.PubSub.V1.Model.ValidateMessageRequest do
  @moduledoc """
  Request for the `ValidateMessage` method.

  ## Attributes

  *   `encoding` (*type:* `String.t`, *default:* `nil`) - The encoding expected for messages
  *   `message` (*type:* `String.t`, *default:* `nil`) - Message to validate against the provided `schema_spec`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the schema against which to validate. Format is `projects/{project}/schemas/{schema}`.
  *   `schema` (*type:* `GoogleApi.PubSub.V1.Model.Schema.t`, *default:* `nil`) - Ad-hoc schema against which to validate
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encoding => String.t(),
          :message => String.t(),
          :name => String.t(),
          :schema => GoogleApi.PubSub.V1.Model.Schema.t()
        }

  field(:encoding)
  field(:message)
  field(:name)
  field(:schema, as: GoogleApi.PubSub.V1.Model.Schema)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.ValidateMessageRequest do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.ValidateMessageRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.ValidateMessageRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
