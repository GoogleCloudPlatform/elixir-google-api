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

defmodule GoogleApi.Sheets.V4.Model.DimensionRange do
  @moduledoc """
  A range along a single dimension on a sheet. All indexes are zero-based. Indexes are half open: the start index is inclusive and the end index is exclusive. Missing indexes indicate the range is unbounded on that side.

  ## Attributes

  *   `dimension` (*type:* `String.t`, *default:* `nil`) - The dimension of the span.
  *   `endIndex` (*type:* `integer()`, *default:* `nil`) - The end (exclusive) of the span, or not set if unbounded.
  *   `sheetId` (*type:* `integer()`, *default:* `nil`) - The sheet this span is on.
  *   `startIndex` (*type:* `integer()`, *default:* `nil`) - The start (inclusive) of the span, or not set if unbounded.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimension => String.t(),
          :endIndex => integer(),
          :sheetId => integer(),
          :startIndex => integer()
        }

  field(:dimension)
  field(:endIndex)
  field(:sheetId)
  field(:startIndex)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.DimensionRange do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.DimensionRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.DimensionRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
