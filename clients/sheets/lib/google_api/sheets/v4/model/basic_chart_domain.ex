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

defmodule GoogleApi.Sheets.V4.Model.BasicChartDomain do
  @moduledoc """
  The domain of a chart. For example, if charting stock prices over time, this would be the date.

  ## Attributes

  *   `domain` (*type:* `GoogleApi.Sheets.V4.Model.ChartData.t`, *default:* `nil`) - The data of the domain. For example, if charting stock prices over time, this is the data representing the dates.
  *   `reversed` (*type:* `boolean()`, *default:* `nil`) - True to reverse the order of the domain values (horizontal axis).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :domain => GoogleApi.Sheets.V4.Model.ChartData.t(),
          :reversed => boolean()
        }

  field(:domain, as: GoogleApi.Sheets.V4.Model.ChartData)
  field(:reversed)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BasicChartDomain do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BasicChartDomain.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BasicChartDomain do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
