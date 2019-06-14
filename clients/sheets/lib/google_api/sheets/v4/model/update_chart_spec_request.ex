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

defmodule GoogleApi.Sheets.V4.Model.UpdateChartSpecRequest do
  @moduledoc """
  Updates a chart's specifications.
  (This does not move or resize a chart. To move or resize a chart, use
  UpdateEmbeddedObjectPositionRequest.)

  ## Attributes

  - chartId (integer()): The ID of the chart to update. Defaults to `nil`.
  - spec (GoogleApi.Sheets.V4.Model.ChartSpec.t): The specification to apply to the chart. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chartId => integer(),
          :spec => GoogleApi.Sheets.V4.Model.ChartSpec.t()
        }

  field(:chartId)
  field(:spec, as: GoogleApi.Sheets.V4.Model.ChartSpec)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.UpdateChartSpecRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.UpdateChartSpecRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.UpdateChartSpecRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
