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

defmodule GoogleApi.Sheets.V4.Model.TreemapChartColorScale do
  @moduledoc """
  A color scale for a treemap chart.

  ## Attributes

  - maxValueColor (GoogleApi.Sheets.V4.Model.Color.t): The background color for cells with a color value greater than or equal
  to maxValue. Defaults to #109618 if not
  specified. Defaults to `nil`.
  - midValueColor (GoogleApi.Sheets.V4.Model.Color.t): The background color for cells with a color value at the midpoint between
  minValue and
  maxValue. Defaults to #efe6dc if not
  specified. Defaults to `nil`.
  - minValueColor (GoogleApi.Sheets.V4.Model.Color.t): The background color for cells with a color value less than or equal to
  minValue. Defaults to #dc3912 if not
  specified. Defaults to `nil`.
  - noDataColor (GoogleApi.Sheets.V4.Model.Color.t): The background color for cells that have no color data associated with
  them. Defaults to #000000 if not specified. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxValueColor => GoogleApi.Sheets.V4.Model.Color.t(),
          :midValueColor => GoogleApi.Sheets.V4.Model.Color.t(),
          :minValueColor => GoogleApi.Sheets.V4.Model.Color.t(),
          :noDataColor => GoogleApi.Sheets.V4.Model.Color.t()
        }

  field(:maxValueColor, as: GoogleApi.Sheets.V4.Model.Color)
  field(:midValueColor, as: GoogleApi.Sheets.V4.Model.Color)
  field(:minValueColor, as: GoogleApi.Sheets.V4.Model.Color)
  field(:noDataColor, as: GoogleApi.Sheets.V4.Model.Color)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.TreemapChartColorScale do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.TreemapChartColorScale.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.TreemapChartColorScale do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
