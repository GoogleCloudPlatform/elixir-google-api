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

defmodule GoogleApi.DFAReporting.V34.Model.CrossDimensionReachReportCompatibleFields do
  @moduledoc """
  Represents fields that are compatible to be selected for a report of type "CROSS_DIMENSION_REACH".

  ## Attributes

  *   `breakdown` (*type:* `list(GoogleApi.DFAReporting.V34.Model.Dimension.t)`, *default:* `nil`) - Dimensions which are compatible to be selected in the "breakdown" section of the report.
  *   `dimensionFilters` (*type:* `list(GoogleApi.DFAReporting.V34.Model.Dimension.t)`, *default:* `nil`) - Dimensions which are compatible to be selected in the "dimensionFilters" section of the report.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of resource this is, in this case dfareporting#crossDimensionReachReportCompatibleFields.
  *   `metrics` (*type:* `list(GoogleApi.DFAReporting.V34.Model.Metric.t)`, *default:* `nil`) - Metrics which are compatible to be selected in the "metricNames" section of the report.
  *   `overlapMetrics` (*type:* `list(GoogleApi.DFAReporting.V34.Model.Metric.t)`, *default:* `nil`) - Metrics which are compatible to be selected in the "overlapMetricNames" section of the report.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :breakdown => list(GoogleApi.DFAReporting.V34.Model.Dimension.t()),
          :dimensionFilters => list(GoogleApi.DFAReporting.V34.Model.Dimension.t()),
          :kind => String.t(),
          :metrics => list(GoogleApi.DFAReporting.V34.Model.Metric.t()),
          :overlapMetrics => list(GoogleApi.DFAReporting.V34.Model.Metric.t())
        }

  field(:breakdown, as: GoogleApi.DFAReporting.V34.Model.Dimension, type: :list)
  field(:dimensionFilters, as: GoogleApi.DFAReporting.V34.Model.Dimension, type: :list)
  field(:kind)
  field(:metrics, as: GoogleApi.DFAReporting.V34.Model.Metric, type: :list)
  field(:overlapMetrics, as: GoogleApi.DFAReporting.V34.Model.Metric, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.DFAReporting.V34.Model.CrossDimensionReachReportCompatibleFields do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.CrossDimensionReachReportCompatibleFields.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DFAReporting.V34.Model.CrossDimensionReachReportCompatibleFields do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
