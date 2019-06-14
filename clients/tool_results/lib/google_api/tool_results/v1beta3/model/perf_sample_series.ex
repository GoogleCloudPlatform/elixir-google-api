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

defmodule GoogleApi.ToolResults.V1beta3.Model.PerfSampleSeries do
  @moduledoc """
  Resource representing a collection of performance samples (or data points)

  ## Attributes

  - basicPerfSampleSeries (GoogleApi.ToolResults.V1beta3.Model.BasicPerfSampleSeries.t): Basic series represented by a line chart Defaults to `nil`.
  - executionId (String.t): A tool results execution ID. Defaults to `nil`.
  - historyId (String.t): A tool results history ID. Defaults to `nil`.
  - projectId (String.t): The cloud project Defaults to `nil`.
  - sampleSeriesId (String.t): A sample series id Defaults to `nil`.
  - stepId (String.t): A tool results step ID. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basicPerfSampleSeries => GoogleApi.ToolResults.V1beta3.Model.BasicPerfSampleSeries.t(),
          :executionId => String.t(),
          :historyId => String.t(),
          :projectId => String.t(),
          :sampleSeriesId => String.t(),
          :stepId => String.t()
        }

  field(:basicPerfSampleSeries, as: GoogleApi.ToolResults.V1beta3.Model.BasicPerfSampleSeries)
  field(:executionId)
  field(:historyId)
  field(:projectId)
  field(:sampleSeriesId)
  field(:stepId)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.PerfSampleSeries do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.PerfSampleSeries.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.PerfSampleSeries do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
