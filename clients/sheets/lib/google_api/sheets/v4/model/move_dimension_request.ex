# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Sheets.V4.Model.MoveDimensionRequest do
  @moduledoc """
  Moves one or more rows or columns.

  ## Attributes

  - destinationIndex (integer()): The zero-based start index of where to move the source data to,
  based on the coordinates *before* the source data is removed
  from the grid.  Existing data will be shifted down or right
  (depending on the dimension) to make room for the moved dimensions.
  The source dimensions are removed from the grid, so the
  the data may end up in a different index than specified.

  For example, given `A1..A5` of `0, 1, 2, 3, 4` and wanting to move
  `"1"` and `"2"` to between `"3"` and `"4"`, the source would be
  `ROWS [1..3)`,and the destination index would be `"4"`
  (the zero-based index of row 5).
  The end result would be `A1..A5` of `0, 3, 1, 2, 4`. Defaults to `nil`.
  - source (GoogleApi.Sheets.V4.Model.DimensionRange.t): The source dimensions to move. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destinationIndex => integer(),
          :source => GoogleApi.Sheets.V4.Model.DimensionRange.t()
        }

  field(:destinationIndex)
  field(:source, as: GoogleApi.Sheets.V4.Model.DimensionRange)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.MoveDimensionRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.MoveDimensionRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.MoveDimensionRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
