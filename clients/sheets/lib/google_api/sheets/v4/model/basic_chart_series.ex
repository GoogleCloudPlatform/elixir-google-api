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

defmodule GoogleApi.Sheets.V4.Model.BasicChartSeries do
  @moduledoc """
  A single series of data in a chart.
  For example, if charting stock prices over time, multiple series may exist,
  one for the "Open Price", "High Price", "Low Price" and "Close Price".

  ## Attributes

  *   `color` (*type:* `GoogleApi.Sheets.V4.Model.Color.t`, *default:* `nil`) - The color for elements (i.e. bars, lines, points) associated with this
      series.  If empty, a default color is used.
  *   `colorStyle` (*type:* `GoogleApi.Sheets.V4.Model.ColorStyle.t`, *default:* `nil`) - The color for elements (i.e. bars, lines, points) associated with this
      series.  If empty, a default color is used.
      If color is also set, this field takes precedence.
  *   `lineStyle` (*type:* `GoogleApi.Sheets.V4.Model.LineStyle.t`, *default:* `nil`) - The line style of this series. Valid only if the
      chartType is AREA,
      LINE, or SCATTER.
      COMBO charts are also supported if the
      series chart type is
      AREA or LINE.
  *   `series` (*type:* `GoogleApi.Sheets.V4.Model.ChartData.t`, *default:* `nil`) - The data being visualized in this chart series.
  *   `targetAxis` (*type:* `String.t`, *default:* `nil`) - The minor axis that will specify the range of values for this series.
      For example, if charting stocks over time, the "Volume" series
      may want to be pinned to the right with the prices pinned to the left,
      because the scale of trading volume is different than the scale of
      prices.
      It is an error to specify an axis that isn't a valid minor axis
      for the chart's type.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of this series. Valid only if the
      chartType is
      COMBO.
      Different types will change the way the series is visualized.
      Only LINE, AREA,
      and COLUMN are supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :color => GoogleApi.Sheets.V4.Model.Color.t(),
          :colorStyle => GoogleApi.Sheets.V4.Model.ColorStyle.t(),
          :lineStyle => GoogleApi.Sheets.V4.Model.LineStyle.t(),
          :series => GoogleApi.Sheets.V4.Model.ChartData.t(),
          :targetAxis => String.t(),
          :type => String.t()
        }

  field(:color, as: GoogleApi.Sheets.V4.Model.Color)
  field(:colorStyle, as: GoogleApi.Sheets.V4.Model.ColorStyle)
  field(:lineStyle, as: GoogleApi.Sheets.V4.Model.LineStyle)
  field(:series, as: GoogleApi.Sheets.V4.Model.ChartData)
  field(:targetAxis)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BasicChartSeries do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BasicChartSeries.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BasicChartSeries do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
