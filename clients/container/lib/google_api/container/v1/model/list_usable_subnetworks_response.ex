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

defmodule GoogleApi.Container.V1.Model.ListUsableSubnetworksResponse do
  @moduledoc """
  ListUsableSubnetworksResponse is the response of ListUsableSubnetworksRequest.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - This token allows you to get the next page of results for list requests. If the number of results is larger than `page_size`, use the `next_page_token` as a value for the query parameter `page_token` in the next request. The value will become empty when there are no more pages.
  *   `subnetworks` (*type:* `list(GoogleApi.Container.V1.Model.UsableSubnetwork.t)`, *default:* `nil`) - A list of usable subnetworks in the specified network project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :subnetworks => list(GoogleApi.Container.V1.Model.UsableSubnetwork.t()) | nil
        }

  field(:nextPageToken)
  field(:subnetworks, as: GoogleApi.Container.V1.Model.UsableSubnetwork, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.ListUsableSubnetworksResponse do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.ListUsableSubnetworksResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.ListUsableSubnetworksResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
