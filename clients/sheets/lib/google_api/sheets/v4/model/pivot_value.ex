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

defmodule GoogleApi.Sheets.V4.Model.PivotValue do
  @moduledoc """
  The definition of how a value in a pivot table should be calculated.

  ## Attributes

  - calculatedDisplayType (String.t): If specified, indicates that pivot values should be displayed as
  the result of a calculation with another pivot value. For example, if
  calculated_display_type is specified as PERCENT_OF_GRAND_TOTAL, all the
  pivot values are displayed as the percentage of the grand total. In
  the Sheets UI, this is referred to as "Show As" in the value section of a
  pivot table. Defaults to `nil`.
  - formula (String.t): A custom formula to calculate the value.  The formula must start
  with an `=` character. Defaults to `nil`.
  - name (String.t): A name to use for the value. Defaults to `nil`.
  - sourceColumnOffset (integer()): The column offset of the source range that this value reads from.

  For example, if the source was `C10:E15`, a `sourceColumnOffset` of `0`
  means this value refers to column `C`, whereas the offset `1` would
  refer to column `D`. Defaults to `nil`.
  - summarizeFunction (String.t): A function to summarize the value.
  If formula is set, the only supported values are
  SUM and
  CUSTOM.
  If sourceColumnOffset is set, then `CUSTOM`
  is not supported. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :calculatedDisplayType => String.t(),
          :formula => String.t(),
          :name => String.t(),
          :sourceColumnOffset => integer(),
          :summarizeFunction => String.t()
        }

  field(:calculatedDisplayType)
  field(:formula)
  field(:name)
  field(:sourceColumnOffset)
  field(:summarizeFunction)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.PivotValue do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.PivotValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.PivotValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
