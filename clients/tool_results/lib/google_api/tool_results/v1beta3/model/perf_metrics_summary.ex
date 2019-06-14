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

defmodule GoogleApi.ToolResults.V1beta3.Model.PerfMetricsSummary do
  @moduledoc """
  A summary of perf metrics collected and performance environment info

  ## Attributes

  - appStartTime (GoogleApi.ToolResults.V1beta3.Model.AppStartTime.t):  Defaults to `nil`.
  - executionId (String.t): A tool results execution ID. Defaults to `nil`.
  - graphicsStats (GoogleApi.ToolResults.V1beta3.Model.GraphicsStats.t): Graphics statistics for the entire run. Statistics are reset at the beginning of the run and collected at the end of the run. Defaults to `nil`.
  - historyId (String.t): A tool results history ID. Defaults to `nil`.
  - perfEnvironment (GoogleApi.ToolResults.V1beta3.Model.PerfEnvironment.t): Describes the environment in which the performance metrics were collected Defaults to `nil`.
  - perfMetrics (list(String.t)): Set of resource collected Defaults to `nil`.
  - projectId (String.t): The cloud project Defaults to `nil`.
  - stepId (String.t): A tool results step ID. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appStartTime => GoogleApi.ToolResults.V1beta3.Model.AppStartTime.t(),
          :executionId => String.t(),
          :graphicsStats => GoogleApi.ToolResults.V1beta3.Model.GraphicsStats.t(),
          :historyId => String.t(),
          :perfEnvironment => GoogleApi.ToolResults.V1beta3.Model.PerfEnvironment.t(),
          :perfMetrics => list(String.t()),
          :projectId => String.t(),
          :stepId => String.t()
        }

  field(:appStartTime, as: GoogleApi.ToolResults.V1beta3.Model.AppStartTime)
  field(:executionId)
  field(:graphicsStats, as: GoogleApi.ToolResults.V1beta3.Model.GraphicsStats)
  field(:historyId)
  field(:perfEnvironment, as: GoogleApi.ToolResults.V1beta3.Model.PerfEnvironment)
  field(:perfMetrics, type: :list)
  field(:projectId)
  field(:stepId)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.PerfMetricsSummary do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.PerfMetricsSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.PerfMetricsSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
