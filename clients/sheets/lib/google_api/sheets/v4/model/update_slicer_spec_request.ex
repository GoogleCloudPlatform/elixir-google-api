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

defmodule GoogleApi.Sheets.V4.Model.UpdateSlicerSpecRequest do
  @moduledoc """
  Updates a slicer's specifications. (This does not move or resize a slicer. To move or resize a slicer use UpdateEmbeddedObjectPositionRequest.

  ## Attributes

  *   `fields` (*type:* `String.t`, *default:* `nil`) - The fields that should be updated. At least one field must be specified. The root `SlicerSpec` is implied and should not be specified. A single "*"` can be used as short-hand for listing every field.
  *   `slicerId` (*type:* `integer()`, *default:* `nil`) - The id of the slicer to update.
  *   `spec` (*type:* `GoogleApi.Sheets.V4.Model.SlicerSpec.t`, *default:* `nil`) - The specification to apply to the slicer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => String.t() | nil,
          :slicerId => integer() | nil,
          :spec => GoogleApi.Sheets.V4.Model.SlicerSpec.t() | nil
        }

  field(:fields)
  field(:slicerId)
  field(:spec, as: GoogleApi.Sheets.V4.Model.SlicerSpec)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.UpdateSlicerSpecRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.UpdateSlicerSpecRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.UpdateSlicerSpecRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
