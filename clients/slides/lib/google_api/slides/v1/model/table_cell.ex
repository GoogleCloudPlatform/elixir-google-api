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

defmodule GoogleApi.Slides.V1.Model.TableCell do
  @moduledoc """
  Properties and contents of each table cell.

  ## Attributes

  - columnSpan (integer()): Column span of the cell. Defaults to `nil`.
  - location (GoogleApi.Slides.V1.Model.TableCellLocation.t): The location of the cell within the table. Defaults to `nil`.
  - rowSpan (integer()): Row span of the cell. Defaults to `nil`.
  - tableCellProperties (GoogleApi.Slides.V1.Model.TableCellProperties.t): The properties of the table cell. Defaults to `nil`.
  - text (GoogleApi.Slides.V1.Model.TextContent.t): The text content of the cell. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnSpan => integer(),
          :location => GoogleApi.Slides.V1.Model.TableCellLocation.t(),
          :rowSpan => integer(),
          :tableCellProperties => GoogleApi.Slides.V1.Model.TableCellProperties.t(),
          :text => GoogleApi.Slides.V1.Model.TextContent.t()
        }

  field(:columnSpan)
  field(:location, as: GoogleApi.Slides.V1.Model.TableCellLocation)
  field(:rowSpan)
  field(:tableCellProperties, as: GoogleApi.Slides.V1.Model.TableCellProperties)
  field(:text, as: GoogleApi.Slides.V1.Model.TextContent)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.TableCell do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.TableCell.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.TableCell do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
