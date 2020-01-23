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

defmodule GoogleApi.Compute.V1.Model.InstanceGroup do
  @moduledoc """
  Represents an Instance Group resource.

  Instance Groups can be used to configure a target for load balancing.

  Instance groups can either be managed or unmanaged.

  To create  managed instance groups, use the instanceGroupManager or regionInstanceGroupManager resource instead.

  Use zonal unmanaged instance groups if you need to apply load balancing to groups of heterogeneous instances or if you need to manage the instances yourself. You cannot create regional unmanaged instance groups.

  For more information, read Instance groups.

  (== resource_for {$api_version}.instanceGroups ==) (== resource_for {$api_version}.regionInstanceGroups ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] The creation timestamp for this instance group in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - [Output Only] The fingerprint of the named ports. The system uses this fingerprint to detect conflicts when multiple users change the named ports concurrently.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] A unique identifier for this instance group, generated by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#instanceGroup`) - [Output Only] The resource type, which is always compute#instanceGroup for instance groups.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the instance group. The name must be 1-63 characters long, and comply with RFC1035.
  *   `namedPorts` (*type:* `list(GoogleApi.Compute.V1.Model.NamedPort.t)`, *default:* `nil`) - Assigns a name to a port number. For example: {name: "http", port: 80}

      This allows the system to reference ports by the assigned name instead of a port number. Named ports can also contain multiple ports. For example: [{name: "http", port: 80},{name: "http", port: 8080}] 

      Named ports apply to all instances in this instance group.
  *   `network` (*type:* `String.t`, *default:* `nil`) - The URL of the network to which all instances in the instance group belong.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL of the region where the instance group is located (for regional resources).
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL for this instance group. The server generates this URL.
  *   `size` (*type:* `integer()`, *default:* `nil`) - [Output Only] The total number of instances in the instance group.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL of the subnetwork to which all instances in the instance group belong.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL of the zone where the instance group is located (for zonal resources).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :description => String.t(),
          :fingerprint => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :namedPorts => list(GoogleApi.Compute.V1.Model.NamedPort.t()),
          :network => String.t(),
          :region => String.t(),
          :selfLink => String.t(),
          :size => integer(),
          :subnetwork => String.t(),
          :zone => String.t()
        }

  field(:creationTimestamp)
  field(:description)
  field(:fingerprint)
  field(:id)
  field(:kind)
  field(:name)
  field(:namedPorts, as: GoogleApi.Compute.V1.Model.NamedPort, type: :list)
  field(:network)
  field(:region)
  field(:selfLink)
  field(:size)
  field(:subnetwork)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceGroup do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
