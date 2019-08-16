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

defmodule GoogleApi.Sheets.V4.Model.CandlestickChartSpec do
  @moduledoc """
  A <a href="/chart/interactive/docs/gallery/candlestickchart">candlestick
  chart</a>.

  ## Attributes

  *   `data` (*type:* `list(GoogleApi.Sheets.V4.Model.CandlestickData.t)`, *default:* `nil`) - The Candlestick chart data.
      Only one CandlestickData is supported.
  *   `domain` (*type:* `GoogleApi.Sheets.V4.Model.CandlestickDomain.t`, *default:* `nil`) - The domain data (horizontal axis) for the candlestick chart.  String data
      will be treated as discrete labels, other data will be treated as
      continuous values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :data => list(GoogleApi.Sheets.V4.Model.CandlestickData.t()),
          :domain => GoogleApi.Sheets.V4.Model.CandlestickDomain.t()
        }

  field(:data, as: GoogleApi.Sheets.V4.Model.CandlestickData, type: :list)
  field(:domain, as: GoogleApi.Sheets.V4.Model.CandlestickDomain)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.CandlestickChartSpec do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.CandlestickChartSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.CandlestickChartSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
