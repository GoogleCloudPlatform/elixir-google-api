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

defmodule GoogleApi.Sheets.V4.Model.DeleteDimensionGroupResponse do
  @moduledoc """
  The result of deleting a group.

  ## Attributes

  *   `dimensionGroups` (*type:* `list(GoogleApi.Sheets.V4.Model.DimensionGroup.t)`, *default:* `nil`) - All groups of a dimension after deleting a group from that dimension.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionGroups => list(GoogleApi.Sheets.V4.Model.DimensionGroup.t()) | nil
        }

  field(:dimensionGroups, as: GoogleApi.Sheets.V4.Model.DimensionGroup, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.DeleteDimensionGroupResponse do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.DeleteDimensionGroupResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.DeleteDimensionGroupResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
