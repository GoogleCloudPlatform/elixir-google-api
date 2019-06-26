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

defmodule GoogleApi.ToolResults.V1beta3.Model.BasicPerfSampleSeries do
  @moduledoc """
  Encapsulates the metadata for basic sample series represented by a line chart

  ## Attributes

  *   `perfMetricType` (*type:* `String.t`, *default:* `nil`) - 
  *   `perfUnit` (*type:* `String.t`, *default:* `nil`) - 
  *   `sampleSeriesLabel` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :perfMetricType => String.t(),
          :perfUnit => String.t(),
          :sampleSeriesLabel => String.t()
        }

  field(:perfMetricType)
  field(:perfUnit)
  field(:sampleSeriesLabel)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.BasicPerfSampleSeries do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.BasicPerfSampleSeries.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.BasicPerfSampleSeries do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
