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

defmodule GoogleApi.Docs.V1.Model.TableCellLocation do
  @moduledoc """
  Location of a single cell within a table.

  ## Attributes

  *   `columnIndex` (*type:* `integer()`, *default:* `nil`) - The zero-based column index. For example, the second column in the table
      has a column index of 1.
  *   `rowIndex` (*type:* `integer()`, *default:* `nil`) - The zero-based row index. For example, the second row in the table has a
      row index of 1.
  *   `tableStartLocation` (*type:* `GoogleApi.Docs.V1.Model.Location.t`, *default:* `nil`) - The location where the table starts in the document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnIndex => integer(),
          :rowIndex => integer(),
          :tableStartLocation => GoogleApi.Docs.V1.Model.Location.t()
        }

  field(:columnIndex)
  field(:rowIndex)
  field(:tableStartLocation, as: GoogleApi.Docs.V1.Model.Location)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.TableCellLocation do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.TableCellLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.TableCellLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
