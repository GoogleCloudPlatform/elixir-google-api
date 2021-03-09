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

defmodule GoogleApi.CloudSearch.V1.Model.SearchResponse do
  @moduledoc """
  The search API response.

  ## Attributes

  *   `debugInfo` (*type:* `GoogleApi.CloudSearch.V1.Model.ResponseDebugInfo.t`, *default:* `nil`) - Debugging information about the response.
  *   `errorInfo` (*type:* `GoogleApi.CloudSearch.V1.Model.ErrorInfo.t`, *default:* `nil`) - Error information about the response.
  *   `facetResults` (*type:* `list(GoogleApi.CloudSearch.V1.Model.FacetResult.t)`, *default:* `nil`) - Repeated facet results.
  *   `hasMoreResults` (*type:* `boolean()`, *default:* `nil`) - Whether there are more search results matching the query.
  *   `queryInterpretation` (*type:* `GoogleApi.CloudSearch.V1.Model.QueryInterpretation.t`, *default:* `nil`) - Query interpretation result for user query. Empty if query interpretation is disabled.
  *   `resultCountEstimate` (*type:* `String.t`, *default:* `nil`) - The estimated result count for this query.
  *   `resultCountExact` (*type:* `String.t`, *default:* `nil`) - The exact result count for this query.
  *   `resultCounts` (*type:* `GoogleApi.CloudSearch.V1.Model.ResultCounts.t`, *default:* `nil`) - Expanded result count information.
  *   `results` (*type:* `list(GoogleApi.CloudSearch.V1.Model.SearchResult.t)`, *default:* `nil`) - Results from a search query.
  *   `spellResults` (*type:* `list(GoogleApi.CloudSearch.V1.Model.SpellResult.t)`, *default:* `nil`) - Suggested spelling for the query.
  *   `structuredResults` (*type:* `list(GoogleApi.CloudSearch.V1.Model.StructuredResult.t)`, *default:* `nil`) - Structured results for the user query. These results are not counted against the page_size.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :debugInfo => GoogleApi.CloudSearch.V1.Model.ResponseDebugInfo.t() | nil,
          :errorInfo => GoogleApi.CloudSearch.V1.Model.ErrorInfo.t() | nil,
          :facetResults => list(GoogleApi.CloudSearch.V1.Model.FacetResult.t()) | nil,
          :hasMoreResults => boolean() | nil,
          :queryInterpretation => GoogleApi.CloudSearch.V1.Model.QueryInterpretation.t() | nil,
          :resultCountEstimate => String.t() | nil,
          :resultCountExact => String.t() | nil,
          :resultCounts => GoogleApi.CloudSearch.V1.Model.ResultCounts.t() | nil,
          :results => list(GoogleApi.CloudSearch.V1.Model.SearchResult.t()) | nil,
          :spellResults => list(GoogleApi.CloudSearch.V1.Model.SpellResult.t()) | nil,
          :structuredResults => list(GoogleApi.CloudSearch.V1.Model.StructuredResult.t()) | nil
        }

  field(:debugInfo, as: GoogleApi.CloudSearch.V1.Model.ResponseDebugInfo)
  field(:errorInfo, as: GoogleApi.CloudSearch.V1.Model.ErrorInfo)
  field(:facetResults, as: GoogleApi.CloudSearch.V1.Model.FacetResult, type: :list)
  field(:hasMoreResults)
  field(:queryInterpretation, as: GoogleApi.CloudSearch.V1.Model.QueryInterpretation)
  field(:resultCountEstimate)
  field(:resultCountExact)
  field(:resultCounts, as: GoogleApi.CloudSearch.V1.Model.ResultCounts)
  field(:results, as: GoogleApi.CloudSearch.V1.Model.SearchResult, type: :list)
  field(:spellResults, as: GoogleApi.CloudSearch.V1.Model.SpellResult, type: :list)
  field(:structuredResults, as: GoogleApi.CloudSearch.V1.Model.StructuredResult, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.SearchResponse do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.SearchResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.SearchResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
