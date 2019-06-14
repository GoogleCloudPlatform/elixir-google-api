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

defmodule GoogleApi.Compute.V1.Model.TargetVpnGatewayAggregatedList do
  @moduledoc """


  ## Attributes

  - id (String.t): [Output Only] Unique identifier for the resource; defined by the server. Defaults to `nil`.
  - items (%{optional(String.t) => GoogleApi.Compute.V1.Model.TargetVpnGatewaysScopedList.t}): A list of TargetVpnGateway resources. Defaults to `nil`.
  - kind (String.t): [Output Only] Type of resource. Always compute#targetVpnGateway for target VPN gateways. Defaults to `compute#targetVpnGatewayAggregatedList`.
  - nextPageToken (String.t): [Output Only] This token allows you to get the next page of results for list requests. If the number of results is larger than maxResults, use the nextPageToken as a value for the query parameter pageToken in the next list request. Subsequent list requests will have their own nextPageToken to continue paging through the results. Defaults to `nil`.
  - selfLink (String.t): [Output Only] Server-defined URL for this resource. Defaults to `nil`.
  - warning (GoogleApi.Compute.V1.Model.TargetVpnGatewayAggregatedListWarning.t): [Output Only] Informational warning message. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :items => %{
            optional(String.t()) => GoogleApi.Compute.V1.Model.TargetVpnGatewaysScopedList.t()
          },
          :kind => String.t(),
          :nextPageToken => String.t(),
          :selfLink => String.t(),
          :warning => GoogleApi.Compute.V1.Model.TargetVpnGatewayAggregatedListWarning.t()
        }

  field(:id)
  field(:items, as: GoogleApi.Compute.V1.Model.TargetVpnGatewaysScopedList, type: :map)
  field(:kind)
  field(:nextPageToken)
  field(:selfLink)
  field(:warning, as: GoogleApi.Compute.V1.Model.TargetVpnGatewayAggregatedListWarning)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.TargetVpnGatewayAggregatedList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.TargetVpnGatewayAggregatedList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.TargetVpnGatewayAggregatedList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
