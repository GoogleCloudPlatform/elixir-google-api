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

defmodule GoogleApi.Sheets.V4.Model.AppendValuesResponse do
  @moduledoc """
  The response when updating a range of values in a spreadsheet.

  ## Attributes

  *   `spreadsheetId` (*type:* `String.t`, *default:* `nil`) - The spreadsheet the updates were applied to.
  *   `tableRange` (*type:* `String.t`, *default:* `nil`) - The range (in A1 notation) of the table that values are being appended to (before the values were appended). Empty if no table was found.
  *   `updates` (*type:* `GoogleApi.Sheets.V4.Model.UpdateValuesResponse.t`, *default:* `nil`) - Information about the updates that were applied.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :spreadsheetId => String.t(),
          :tableRange => String.t(),
          :updates => GoogleApi.Sheets.V4.Model.UpdateValuesResponse.t()
        }

  field(:spreadsheetId)
  field(:tableRange)
  field(:updates, as: GoogleApi.Sheets.V4.Model.UpdateValuesResponse)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.AppendValuesResponse do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.AppendValuesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.AppendValuesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
