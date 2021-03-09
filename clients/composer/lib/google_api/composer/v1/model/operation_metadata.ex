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

defmodule GoogleApi.Composer.V1.Model.OperationMetadata do
  @moduledoc """
  Metadata describing an operation.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the operation was submitted to the server.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the operation terminated, regardless of its success. This field is unset if the operation is still ongoing.
  *   `operationType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of operation being performed.
  *   `resource` (*type:* `String.t`, *default:* `nil`) - Output only. The resource being operated on, as a [relative resource name]( /apis/design/resource_names#relative_resource_name).
  *   `resourceUuid` (*type:* `String.t`, *default:* `nil`) - Output only. The UUID of the resource being operated on.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current operation state.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :endTime => DateTime.t() | nil,
          :operationType => String.t() | nil,
          :resource => String.t() | nil,
          :resourceUuid => String.t() | nil,
          :state => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:operationType)
  field(:resource)
  field(:resourceUuid)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1.Model.OperationMetadata do
  def decode(value, options) do
    GoogleApi.Composer.V1.Model.OperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1.Model.OperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
