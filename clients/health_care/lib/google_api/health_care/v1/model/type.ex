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

defmodule GoogleApi.HealthCare.V1.Model.Type do
  @moduledoc """
  A type definition for some HL7v2 type (incl. Segments and Datatypes).

  ## Attributes

  *   `fields` (*type:* `list(GoogleApi.HealthCare.V1.Model.Field.t)`, *default:* `nil`) - The (sub) fields this type has (if not primitive).
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  *   `primitive` (*type:* `String.t`, *default:* `nil`) - If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => list(GoogleApi.HealthCare.V1.Model.Field.t()) | nil,
          :name => String.t() | nil,
          :primitive => String.t() | nil
        }

  field(:fields, as: GoogleApi.HealthCare.V1.Model.Field, type: :list)
  field(:name)
  field(:primitive)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.Type do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.Type.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.Type do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
