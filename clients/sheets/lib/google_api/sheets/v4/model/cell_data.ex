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

defmodule GoogleApi.Sheets.V4.Model.CellData do
  @moduledoc """
  Data about a specific cell.

  ## Attributes

  *   `dataValidation` (*type:* `GoogleApi.Sheets.V4.Model.DataValidationRule.t`, *default:* `nil`) - A data validation rule on the cell, if any. When writing, the new data validation rule will overwrite any prior rule.
  *   `effectiveFormat` (*type:* `GoogleApi.Sheets.V4.Model.CellFormat.t`, *default:* `nil`) - The effective format being used by the cell. This includes the results of applying any conditional formatting and, if the cell contains a formula, the computed number format. If the effective format is the default format, effective format will not be written. This field is read-only.
  *   `effectiveValue` (*type:* `GoogleApi.Sheets.V4.Model.ExtendedValue.t`, *default:* `nil`) - The effective value of the cell. For cells with formulas, this is the calculated value. For cells with literals, this is the same as the user_entered_value. This field is read-only.
  *   `formattedValue` (*type:* `String.t`, *default:* `nil`) - The formatted value of the cell. This is the value as it's shown to the user. This field is read-only.
  *   `hyperlink` (*type:* `String.t`, *default:* `nil`) - A hyperlink this cell points to, if any. This field is read-only. (To set it, use a `=HYPERLINK` formula in the userEnteredValue.formulaValue field.)
  *   `note` (*type:* `String.t`, *default:* `nil`) - Any note on the cell.
  *   `pivotTable` (*type:* `GoogleApi.Sheets.V4.Model.PivotTable.t`, *default:* `nil`) - A pivot table anchored at this cell. The size of pivot table itself is computed dynamically based on its data, grouping, filters, values, etc. Only the top-left cell of the pivot table contains the pivot table definition. The other cells will contain the calculated values of the results of the pivot in their effective_value fields.
  *   `textFormatRuns` (*type:* `list(GoogleApi.Sheets.V4.Model.TextFormatRun.t)`, *default:* `nil`) - Runs of rich text applied to subsections of the cell. Runs are only valid on user entered strings, not formulas, bools, or numbers. Runs start at specific indexes in the text and continue until the next run. Properties of a run will continue unless explicitly changed in a subsequent run (and properties of the first run will continue the properties of the cell unless explicitly changed). When writing, the new runs will overwrite any prior runs. When writing a new user_entered_value, previous runs are erased.
  *   `userEnteredFormat` (*type:* `GoogleApi.Sheets.V4.Model.CellFormat.t`, *default:* `nil`) - The format the user entered for the cell. When writing, the new format will be merged with the existing format.
  *   `userEnteredValue` (*type:* `GoogleApi.Sheets.V4.Model.ExtendedValue.t`, *default:* `nil`) - The value the user entered in the cell. e.g, `1234`, `'Hello'`, or `=NOW()` Note: Dates, Times and DateTimes are represented as doubles in serial number format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataValidation => GoogleApi.Sheets.V4.Model.DataValidationRule.t(),
          :effectiveFormat => GoogleApi.Sheets.V4.Model.CellFormat.t(),
          :effectiveValue => GoogleApi.Sheets.V4.Model.ExtendedValue.t(),
          :formattedValue => String.t(),
          :hyperlink => String.t(),
          :note => String.t(),
          :pivotTable => GoogleApi.Sheets.V4.Model.PivotTable.t(),
          :textFormatRuns => list(GoogleApi.Sheets.V4.Model.TextFormatRun.t()),
          :userEnteredFormat => GoogleApi.Sheets.V4.Model.CellFormat.t(),
          :userEnteredValue => GoogleApi.Sheets.V4.Model.ExtendedValue.t()
        }

  field(:dataValidation, as: GoogleApi.Sheets.V4.Model.DataValidationRule)
  field(:effectiveFormat, as: GoogleApi.Sheets.V4.Model.CellFormat)
  field(:effectiveValue, as: GoogleApi.Sheets.V4.Model.ExtendedValue)
  field(:formattedValue)
  field(:hyperlink)
  field(:note)
  field(:pivotTable, as: GoogleApi.Sheets.V4.Model.PivotTable)
  field(:textFormatRuns, as: GoogleApi.Sheets.V4.Model.TextFormatRun, type: :list)
  field(:userEnteredFormat, as: GoogleApi.Sheets.V4.Model.CellFormat)
  field(:userEnteredValue, as: GoogleApi.Sheets.V4.Model.ExtendedValue)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.CellData do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.CellData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.CellData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
