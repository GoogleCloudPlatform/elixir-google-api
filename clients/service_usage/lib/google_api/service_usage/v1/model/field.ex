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

defmodule GoogleApi.ServiceUsage.V1.Model.Field do
  @moduledoc """
  A single field of a message type.

  ## Attributes

  *   `cardinality` (*type:* `String.t`, *default:* `nil`) - The field cardinality.
  *   `defaultValue` (*type:* `String.t`, *default:* `nil`) - The string value of the default value of this field. Proto2 syntax only.
  *   `jsonName` (*type:* `String.t`, *default:* `nil`) - The field JSON name.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The field type.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The field name.
  *   `number` (*type:* `integer()`, *default:* `nil`) - The field number.
  *   `oneofIndex` (*type:* `integer()`, *default:* `nil`) - The index of the field type in `Type.oneofs`, for message or enumeration
      types. The first type has index 1; zero means the type is not in the list.
  *   `options` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.Option.t)`, *default:* `nil`) - The protocol buffer options.
  *   `packed` (*type:* `boolean()`, *default:* `nil`) - Whether to use alternative packed wire representation.
  *   `typeUrl` (*type:* `String.t`, *default:* `nil`) - The field type URL, without the scheme, for message or enumeration
      types. Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cardinality => String.t(),
          :defaultValue => String.t(),
          :jsonName => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :number => integer(),
          :oneofIndex => integer(),
          :options => list(GoogleApi.ServiceUsage.V1.Model.Option.t()),
          :packed => boolean(),
          :typeUrl => String.t()
        }

  field(:cardinality)
  field(:defaultValue)
  field(:jsonName)
  field(:kind)
  field(:name)
  field(:number)
  field(:oneofIndex)
  field(:options, as: GoogleApi.ServiceUsage.V1.Model.Option, type: :list)
  field(:packed)
  field(:typeUrl)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.Field do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.Field.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.Field do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
