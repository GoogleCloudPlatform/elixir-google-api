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

defmodule GoogleApi.AdSenseHost.V41.Model.Report do
  @moduledoc """


  ## Attributes

  *   `averages` (*type:* `list(String.t)`, *default:* `nil`) - The averages of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty.
  *   `headers` (*type:* `list(GoogleApi.AdSenseHost.V41.Model.ReportHeaders.t)`, *default:* `nil`) - The header information of the columns requested in the report. This is a list of headers; one for each dimension in the request, followed by one for each metric in the request.
  *   `kind` (*type:* `String.t`, *default:* `adsensehost#report`) - Kind this is, in this case adsensehost#report.
  *   `rows` (*type:* `list(list(String.t))`, *default:* `nil`) - The output rows of the report. Each row is a list of cells; one for each dimension in the request, followed by one for each metric in the request. The dimension cells contain strings, and the metric cells contain numbers.
  *   `totalMatchedRows` (*type:* `String.t`, *default:* `nil`) - The total number of rows matched by the report request. Fewer rows may be returned in the response due to being limited by the row count requested or the report row limit.
  *   `totals` (*type:* `list(String.t)`, *default:* `nil`) - The totals of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty.
  *   `warnings` (*type:* `list(String.t)`, *default:* `nil`) - Any warnings associated with generation of the report.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :averages => list(String.t()),
          :headers => list(GoogleApi.AdSenseHost.V41.Model.ReportHeaders.t()),
          :kind => String.t(),
          :rows => list(list(String.t())),
          :totalMatchedRows => String.t(),
          :totals => list(String.t()),
          :warnings => list(String.t())
        }

  field(:averages, type: :list)
  field(:headers, as: GoogleApi.AdSenseHost.V41.Model.ReportHeaders, type: :list)
  field(:kind)
  field(:rows, type: :listlist)
  field(:totalMatchedRows)
  field(:totals, type: :list)
  field(:warnings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AdSenseHost.V41.Model.Report do
  def decode(value, options) do
    GoogleApi.AdSenseHost.V41.Model.Report.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSenseHost.V41.Model.Report do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
