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

defmodule GoogleApi.DFAReporting.V33.Model.ReachReportCompatibleFields do
  @moduledoc """
  Represents fields that are compatible to be selected for a report of type "REACH".

  ## Attributes

  *   `dimensionFilters` (*type:* `list(GoogleApi.DFAReporting.V33.Model.Dimension.t)`, *default:* `nil`) - Dimensions which are compatible to be selected in the "dimensionFilters" section of the report.
  *   `dimensions` (*type:* `list(GoogleApi.DFAReporting.V33.Model.Dimension.t)`, *default:* `nil`) - Dimensions which are compatible to be selected in the "dimensions" section of the report.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#reachReportCompatibleFields`) - The kind of resource this is, in this case dfareporting#reachReportCompatibleFields.
  *   `metrics` (*type:* `list(GoogleApi.DFAReporting.V33.Model.Metric.t)`, *default:* `nil`) - Metrics which are compatible to be selected in the "metricNames" section of the report.
  *   `pivotedActivityMetrics` (*type:* `list(GoogleApi.DFAReporting.V33.Model.Metric.t)`, *default:* `nil`) - Metrics which are compatible to be selected as activity metrics to pivot on in the "activities" section of the report.
  *   `reachByFrequencyMetrics` (*type:* `list(GoogleApi.DFAReporting.V33.Model.Metric.t)`, *default:* `nil`) - Metrics which are compatible to be selected in the "reachByFrequencyMetricNames" section of the report.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionFilters => list(GoogleApi.DFAReporting.V33.Model.Dimension.t()),
          :dimensions => list(GoogleApi.DFAReporting.V33.Model.Dimension.t()),
          :kind => String.t(),
          :metrics => list(GoogleApi.DFAReporting.V33.Model.Metric.t()),
          :pivotedActivityMetrics => list(GoogleApi.DFAReporting.V33.Model.Metric.t()),
          :reachByFrequencyMetrics => list(GoogleApi.DFAReporting.V33.Model.Metric.t())
        }

  field(:dimensionFilters, as: GoogleApi.DFAReporting.V33.Model.Dimension, type: :list)
  field(:dimensions, as: GoogleApi.DFAReporting.V33.Model.Dimension, type: :list)
  field(:kind)
  field(:metrics, as: GoogleApi.DFAReporting.V33.Model.Metric, type: :list)
  field(:pivotedActivityMetrics, as: GoogleApi.DFAReporting.V33.Model.Metric, type: :list)
  field(:reachByFrequencyMetrics, as: GoogleApi.DFAReporting.V33.Model.Metric, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.ReachReportCompatibleFields do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.ReachReportCompatibleFields.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.ReachReportCompatibleFields do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
