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

defmodule GoogleApi.Sheets.V4.Model.InsertRangeRequest do
  @moduledoc """
  Inserts cells into a range, shifting the existing cells over or down.

  ## Attributes

  *   `range` (*type:* `GoogleApi.Sheets.V4.Model.GridRange.t`, *default:* `nil`) - The range to insert new cells into.
  *   `shiftDimension` (*type:* `String.t`, *default:* `nil`) - The dimension which will be shifted when inserting cells. If ROWS, existing cells will be shifted down. If COLUMNS, existing cells will be shifted right.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :range => GoogleApi.Sheets.V4.Model.GridRange.t(),
          :shiftDimension => String.t()
        }

  field(:range, as: GoogleApi.Sheets.V4.Model.GridRange)
  field(:shiftDimension)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.InsertRangeRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.InsertRangeRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.InsertRangeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
