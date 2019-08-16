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

defmodule GoogleApi.People.V1.Model.FieldMetadata do
  @moduledoc """
  Metadata about a field.

  ## Attributes

  *   `primary` (*type:* `boolean()`, *default:* `nil`) - True if the field is the primary field; false if the field is a secondary
      field.
  *   `source` (*type:* `GoogleApi.People.V1.Model.Source.t`, *default:* `nil`) - The source of the field.
  *   `verified` (*type:* `boolean()`, *default:* `nil`) - True if the field is verified; false if the field is unverified. A
      verified field is typically a name, email address, phone number, or
      website that has been confirmed to be owned by the person.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :primary => boolean(),
          :source => GoogleApi.People.V1.Model.Source.t(),
          :verified => boolean()
        }

  field(:primary)
  field(:source, as: GoogleApi.People.V1.Model.Source)
  field(:verified)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.FieldMetadata do
  def decode(value, options) do
    GoogleApi.People.V1.Model.FieldMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.FieldMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
