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

defmodule GoogleApi.Compute.V1.Model.ResourcePolicyAggregatedList do
  @moduledoc """
  Contains a list of resourcePolicies.

  ## Attributes

  - etag (String.t):  Defaults to `nil`.
  - id (String.t): [Output Only] Unique identifier for the resource; defined by the server. Defaults to `nil`.
  - items (%{optional(String.t) => GoogleApi.Compute.V1.Model.ResourcePoliciesScopedList.t}): A list of ResourcePolicy resources. Defaults to `nil`.
  - kind (String.t): Type of resource. Defaults to `compute#resourcePolicyAggregatedList`.
  - nextPageToken (String.t): [Output Only] This token allows you to get the next page of results for list requests. If the number of results is larger than maxResults, use the nextPageToken as a value for the query parameter pageToken in the next list request. Subsequent list requests will have their own nextPageToken to continue paging through the results. Defaults to `nil`.
  - selfLink (String.t): [Output Only] Server-defined URL for this resource. Defaults to `nil`.
  - warning (GoogleApi.Compute.V1.Model.ResourcePolicyAggregatedListWarning.t): [Output Only] Informational warning message. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :id => String.t(),
          :items => %{
            optional(String.t()) => GoogleApi.Compute.V1.Model.ResourcePoliciesScopedList.t()
          },
          :kind => String.t(),
          :nextPageToken => String.t(),
          :selfLink => String.t(),
          :warning => GoogleApi.Compute.V1.Model.ResourcePolicyAggregatedListWarning.t()
        }

  field(:etag)
  field(:id)
  field(:items, as: GoogleApi.Compute.V1.Model.ResourcePoliciesScopedList, type: :map)
  field(:kind)
  field(:nextPageToken)
  field(:selfLink)
  field(:warning, as: GoogleApi.Compute.V1.Model.ResourcePolicyAggregatedListWarning)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ResourcePolicyAggregatedList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ResourcePolicyAggregatedList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ResourcePolicyAggregatedList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
