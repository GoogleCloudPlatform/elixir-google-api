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

defmodule GoogleApi.ServiceNetworking.V1.Model.RemoveDnsZoneRequest do
  @moduledoc """
  Request to remove a private managed DNS zone in the shared producer host project and a matching DNS peering zone in the consumer project.

  ## Attributes

  *   `consumerNetwork` (*type:* `String.t`, *default:* `nil`) - Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/global/networks/{network} {project} is the project number, as in '12345' {network} is the network name.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name for both the private zone in the shared producer host project and the peering zone in the consumer project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerNetwork => String.t() | nil,
          :name => String.t() | nil
        }

  field(:consumerNetwork)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.RemoveDnsZoneRequest do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.RemoveDnsZoneRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.RemoveDnsZoneRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
