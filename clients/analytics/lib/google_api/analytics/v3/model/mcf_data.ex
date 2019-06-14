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

defmodule GoogleApi.Analytics.V3.Model.McfData do
  @moduledoc """
  Multi-Channel Funnels data for a given view (profile).

  ## Attributes

  - columnHeaders (list(GoogleApi.Analytics.V3.Model.McfDataColumnHeaders.t)): Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request. Defaults to `nil`.
  - containsSampledData (boolean()): Determines if the Analytics data contains sampled data. Defaults to `nil`.
  - id (String.t): Unique ID for this data response. Defaults to `nil`.
  - itemsPerPage (integer()): The maximum number of rows the response can contain, regardless of the actual number of rows returned. Its value ranges from 1 to 10,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. Defaults to `nil`.
  - kind (String.t): Resource type. Defaults to `analytics#mcfData`.
  - nextLink (String.t): Link to next page for this Analytics data query. Defaults to `nil`.
  - previousLink (String.t): Link to previous page for this Analytics data query. Defaults to `nil`.
  - profileInfo (GoogleApi.Analytics.V3.Model.McfDataProfileInfo.t): Information for the view (profile), for which the Analytics data was requested. Defaults to `nil`.
  - query (GoogleApi.Analytics.V3.Model.McfDataQuery.t): Analytics data request query parameters. Defaults to `nil`.
  - rows (list(list(GoogleApi.Analytics.V3.Model.McfDataRows.t))): Analytics data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request. Defaults to `nil`.
  - sampleSize (String.t): The number of samples used to calculate the result. Defaults to `nil`.
  - sampleSpace (String.t): Total size of the sample space from which the samples were selected. Defaults to `nil`.
  - selfLink (String.t): Link to this page. Defaults to `nil`.
  - totalResults (integer()): The total number of rows for the query, regardless of the number of rows in the response. Defaults to `nil`.
  - totalsForAllResults (map()): Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnHeaders => list(GoogleApi.Analytics.V3.Model.McfDataColumnHeaders.t()),
          :containsSampledData => boolean(),
          :id => String.t(),
          :itemsPerPage => integer(),
          :kind => String.t(),
          :nextLink => String.t(),
          :previousLink => String.t(),
          :profileInfo => GoogleApi.Analytics.V3.Model.McfDataProfileInfo.t(),
          :query => GoogleApi.Analytics.V3.Model.McfDataQuery.t(),
          :rows => list(list(GoogleApi.Analytics.V3.Model.McfDataRows.t())),
          :sampleSize => String.t(),
          :sampleSpace => String.t(),
          :selfLink => String.t(),
          :totalResults => integer(),
          :totalsForAllResults => map()
        }

  field(:columnHeaders, as: GoogleApi.Analytics.V3.Model.McfDataColumnHeaders, type: :list)
  field(:containsSampledData)
  field(:id)
  field(:itemsPerPage)
  field(:kind)
  field(:nextLink)
  field(:previousLink)
  field(:profileInfo, as: GoogleApi.Analytics.V3.Model.McfDataProfileInfo)
  field(:query, as: GoogleApi.Analytics.V3.Model.McfDataQuery)
  field(:rows, type: :list)
  field(:sampleSize)
  field(:sampleSpace)
  field(:selfLink)
  field(:totalResults)
  field(:totalsForAllResults, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.McfData do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.McfData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.McfData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
