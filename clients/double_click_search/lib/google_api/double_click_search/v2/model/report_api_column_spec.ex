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

defmodule GoogleApi.DoubleClickSearch.V2.Model.ReportApiColumnSpec do
  @moduledoc """
  A request object used to create a DoubleClick Search report.

  ## Attributes

  *   `columnName` (*type:* `String.t`, *default:* `nil`) - Name of a DoubleClick Search column to include in the report.
  *   `customDimensionName` (*type:* `String.t`, *default:* `nil`) - Segments a report by a custom dimension. The report must be scoped to an
      advertiser or lower, and the custom dimension must already be set up in
      DoubleClick Search. The custom dimension name, which appears in DoubleClick
      Search, is case sensitive.\\
      If used in a conversion report, returns the
      value of the specified custom dimension for the given conversion, if set.
      This column does not segment the conversion report.
  *   `customMetricName` (*type:* `String.t`, *default:* `nil`) - Name of a custom metric to include in the report. The report must be scoped
      to an advertiser or lower, and the custom metric must already be set up in
      DoubleClick Search. The custom metric name, which appears in DoubleClick
      Search, is case sensitive.
  *   `endDate` (*type:* `String.t`, *default:* `nil`) - Inclusive day in YYYY-MM-DD format. When provided, this overrides the
      overall time range of the report for this column only. Must be provided
      together with `startDate`.
  *   `groupByColumn` (*type:* `boolean()`, *default:* `nil`) - Synchronous report only. Set to `true` to group by this column.
      Defaults to `false`.
  *   `headerText` (*type:* `String.t`, *default:* `nil`) - Text used to identify this column in the report output; defaults to
      `columnName` or `savedColumnName` when not specified.
      This can be used to prevent collisions between DoubleClick Search columns
      and saved columns with the same name.
  *   `platformSource` (*type:* `String.t`, *default:* `nil`) - The platform that is used to provide data for the custom dimension.
      Acceptable values are "floodlight".
  *   `productReportPerspective` (*type:* `String.t`, *default:* `nil`) - Returns metrics only for a specific type of product activity. Accepted
      values are: <ul> <li>"`sold`": returns metrics only for products
      that were sold</li> <li>"`advertised`": returns metrics only for
      products that were advertised in a Shopping campaign, and that might or
      might not have been sold</li> </ul>
  *   `savedColumnName` (*type:* `String.t`, *default:* `nil`) - Name of a saved column to include in the report. The report must be scoped
      at advertiser or lower, and this saved column must already be created in
      the DoubleClick Search UI.
  *   `startDate` (*type:* `String.t`, *default:* `nil`) - Inclusive date in YYYY-MM-DD format. When provided, this overrides the
      overall time range of the report for this column only. Must be provided
      together with `endDate`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnName => String.t(),
          :customDimensionName => String.t(),
          :customMetricName => String.t(),
          :endDate => String.t(),
          :groupByColumn => boolean(),
          :headerText => String.t(),
          :platformSource => String.t(),
          :productReportPerspective => String.t(),
          :savedColumnName => String.t(),
          :startDate => String.t()
        }

  field(:columnName)
  field(:customDimensionName)
  field(:customMetricName)
  field(:endDate)
  field(:groupByColumn)
  field(:headerText)
  field(:platformSource)
  field(:productReportPerspective)
  field(:savedColumnName)
  field(:startDate)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.ReportApiColumnSpec do
  def decode(value, options) do
    GoogleApi.DoubleClickSearch.V2.Model.ReportApiColumnSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickSearch.V2.Model.ReportApiColumnSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
