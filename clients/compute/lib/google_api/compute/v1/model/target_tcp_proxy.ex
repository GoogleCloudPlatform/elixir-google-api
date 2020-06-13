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

defmodule GoogleApi.Compute.V1.Model.TargetTcpProxy do
  @moduledoc """
  Represents a Target TCP Proxy resource.

  A target TCP proxy is a component of a TCP Proxy load balancer. Global forwarding rules reference target TCP proxy, and the target proxy then references an external backend service. For more information, read TCP Proxy Load Balancing overview. (== resource_for {$api_version}.targetTcpProxies ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#targetTcpProxy`) - [Output Only] Type of the resource. Always compute#targetTcpProxy for target TCP proxies.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `proxyHeader` (*type:* `String.t`, *default:* `nil`) - Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `service` (*type:* `String.t`, *default:* `nil`) - URL to the BackendService resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :description => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :proxyHeader => String.t(),
          :selfLink => String.t(),
          :service => String.t()
        }

  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:kind)
  field(:name)
  field(:proxyHeader)
  field(:selfLink)
  field(:service)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.TargetTcpProxy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.TargetTcpProxy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.TargetTcpProxy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
