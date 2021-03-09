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

defmodule GoogleApi.AnalyticsData.V1alpha.Model.Pivot do
  @moduledoc """
  Describes the visible dimension columns and rows in the report response.

  ## Attributes

  *   `fieldNames` (*type:* `list(String.t)`, *default:* `nil`) - Dimension names for visible columns in the report response. Including "dateRange" produces a date range column; for each row in the response, dimension values in the date range column will indicate the corresponding date range from the request.
  *   `limit` (*type:* `String.t`, *default:* `nil`) - The number of rows to return in this pivot. If the `limit` parameter is unspecified, up to 10,000 rows are returned. The product of the `limit` for each `pivot` in a `RunPivotReportRequest` must not exceed 100,000. For example, a two pivot request with `limit: 1000` in each pivot will fail because the product is `1,000,000`.
  *   `metricAggregations` (*type:* `list(String.t)`, *default:* `nil`) - Aggregate the metrics by dimensions in this pivot using the specified metric_aggregations.
  *   `offset` (*type:* `String.t`, *default:* `nil`) - The row count of the start row. The first row is counted as row 0.
  *   `orderBys` (*type:* `list(GoogleApi.AnalyticsData.V1alpha.Model.OrderBy.t)`, *default:* `nil`) - Specifies how dimensions are ordered in the pivot. In the first Pivot, the OrderBys determine Row and PivotDimensionHeader ordering; in subsequent Pivots, the OrderBys determine only PivotDimensionHeader ordering. Dimensions specified in these OrderBys must be a subset of Pivot.field_names.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fieldNames => list(String.t()) | nil,
          :limit => String.t() | nil,
          :metricAggregations => list(String.t()) | nil,
          :offset => String.t() | nil,
          :orderBys => list(GoogleApi.AnalyticsData.V1alpha.Model.OrderBy.t()) | nil
        }

  field(:fieldNames, type: :list)
  field(:limit)
  field(:metricAggregations, type: :list)
  field(:offset)
  field(:orderBys, as: GoogleApi.AnalyticsData.V1alpha.Model.OrderBy, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1alpha.Model.Pivot do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1alpha.Model.Pivot.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1alpha.Model.Pivot do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
