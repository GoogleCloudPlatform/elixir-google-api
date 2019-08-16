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

defmodule GoogleApi.Slides.V1.Model.Table do
  @moduledoc """
  A PageElement kind representing a
  table.

  ## Attributes

  *   `columns` (*type:* `integer()`, *default:* `nil`) - Number of columns in the table.
  *   `horizontalBorderRows` (*type:* `list(GoogleApi.Slides.V1.Model.TableBorderRow.t)`, *default:* `nil`) - Properties of horizontal cell borders.

      A table's horizontal cell borders are represented as a grid. The grid has
      one more row than the number of rows in the table and the same number of
      columns as the table. For example, if the table is 3 x 3, its horizontal
      borders will be represented as a grid with 4 rows and 3 columns.
  *   `rows` (*type:* `integer()`, *default:* `nil`) - Number of rows in the table.
  *   `tableColumns` (*type:* `list(GoogleApi.Slides.V1.Model.TableColumnProperties.t)`, *default:* `nil`) - Properties of each column.
  *   `tableRows` (*type:* `list(GoogleApi.Slides.V1.Model.TableRow.t)`, *default:* `nil`) - Properties and contents of each row.

      Cells that span multiple rows are contained in only one of these rows and
      have a row_span greater
      than 1.
  *   `verticalBorderRows` (*type:* `list(GoogleApi.Slides.V1.Model.TableBorderRow.t)`, *default:* `nil`) - Properties of vertical cell borders.

      A table's vertical cell borders are represented as a grid. The grid has the
      same number of rows as the table and one more column than the number of
      columns in the table. For example, if the table is 3 x 3, its vertical
      borders will be represented as a grid with 3 rows and 4 columns.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columns => integer(),
          :horizontalBorderRows => list(GoogleApi.Slides.V1.Model.TableBorderRow.t()),
          :rows => integer(),
          :tableColumns => list(GoogleApi.Slides.V1.Model.TableColumnProperties.t()),
          :tableRows => list(GoogleApi.Slides.V1.Model.TableRow.t()),
          :verticalBorderRows => list(GoogleApi.Slides.V1.Model.TableBorderRow.t())
        }

  field(:columns)
  field(:horizontalBorderRows, as: GoogleApi.Slides.V1.Model.TableBorderRow, type: :list)
  field(:rows)
  field(:tableColumns, as: GoogleApi.Slides.V1.Model.TableColumnProperties, type: :list)
  field(:tableRows, as: GoogleApi.Slides.V1.Model.TableRow, type: :list)
  field(:verticalBorderRows, as: GoogleApi.Slides.V1.Model.TableBorderRow, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Table do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.Table.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.Table do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
