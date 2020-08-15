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

defmodule GoogleApi.HealthCare.V1.Model.ListFhirStoresResponse do
  @moduledoc """
  Lists the FHIR stores in the given dataset.

  ## Attributes

  *   `fhirStores` (*type:* `list(GoogleApi.HealthCare.V1.Model.FhirStore.t)`, *default:* `nil`) - The returned FHIR stores. Won't be more FHIR stores than the value of
      page_size in the request.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results or empty if there are no more
      results in the list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fhirStores => list(GoogleApi.HealthCare.V1.Model.FhirStore.t()),
          :nextPageToken => String.t()
        }

  field(:fhirStores, as: GoogleApi.HealthCare.V1.Model.FhirStore, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.ListFhirStoresResponse do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.ListFhirStoresResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.ListFhirStoresResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
