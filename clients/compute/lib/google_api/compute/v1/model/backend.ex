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

defmodule GoogleApi.Compute.V1.Model.Backend do
  @moduledoc """
  Message containing information of one individual backend.

  ## Attributes

  *   `balancingMode` (*type:* `String.t`, *default:* `nil`) - Specifies the balancing mode for the backend.

      When choosing a balancing mode, you need to consider the loadBalancingScheme, and protocol for the backend service, as well as the type of backend (instance group or NEG).

       
      - If the load balancing mode is CONNECTION, then the load is spread based on how many concurrent connections the backend can handle.
      You can use the CONNECTION balancing mode if the protocol for the backend service is SSL, TCP, or UDP.

      If the loadBalancingScheme for the backend service is EXTERNAL (SSL Proxy and TCP Proxy load balancers), you must also specify exactly one of the following parameters: maxConnections (except for regional managed instance groups), maxConnectionsPerInstance, or maxConnectionsPerEndpoint.

      If the loadBalancingScheme for the backend service is INTERNAL (internal TCP/UDP load balancers), you cannot specify any additional parameters.
       
      - If the load balancing mode is RATE, the load is spread based on the rate of HTTP requests per second (RPS).
      You can use the RATE balancing mode if the protocol for the backend service is HTTP or HTTPS. You must specify exactly one of the following parameters: maxRate (except for regional managed instance groups), maxRatePerInstance, or maxRatePerEndpoint.
       
      - If the load balancing mode is UTILIZATION, the load is spread based on the backend utilization of instances in an instance group.
      You can use the UTILIZATION balancing mode if the loadBalancingScheme of the backend service is EXTERNAL, INTERNAL_SELF_MANAGED, or INTERNAL_MANAGED and the backends are instance groups. There are no restrictions on the backend service protocol.
  *   `capacityScaler` (*type:* `number()`, *default:* `nil`) - A multiplier applied to the group's maximum servicing capacity (based on UTILIZATION, RATE or CONNECTION). Default value is 1, which means the group will serve up to 100% of its configured capacity (depending on balancingMode). A setting of 0 means the group is completely drained, offering 0% of its available capacity. Valid range is 0.0 and [0.1,1.0]. You cannot configure a setting larger than 0 and smaller than 0.1. You cannot configure a setting of 0 when there is only one backend attached to the backend service.

      This cannot be used for internal load balancing.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `failover` (*type:* `boolean()`, *default:* `nil`) - This field designates whether this is a failover backend. More than one failover backend can be configured for a given BackendService.
  *   `group` (*type:* `String.t`, *default:* `nil`) - The fully-qualified URL of an instance group or network endpoint group (NEG) resource. The type of backend that a backend service supports depends on the backend service's loadBalancingScheme.

       
      - When the loadBalancingScheme for the backend service is EXTERNAL, INTERNAL_SELF_MANAGED, or INTERNAL_MANAGED, the backend can be either an instance group or a NEG. The backends on the backend service must be either all instance groups or all NEGs. You cannot mix instance group and NEG backends on the same backend service. 


      - When the loadBalancingScheme for the backend service is INTERNAL, the backend must be an instance group in the same region as the backend service. NEGs are not supported.  

      You must use the fully-qualified URL (starting with https://www.googleapis.com/) to specify the instance group or NEG. Partial URLs are not supported.
  *   `maxConnections` (*type:* `integer()`, *default:* `nil`) - Defines a target maximum number of simultaneous connections that the backend can handle. Valid for network endpoint group and instance group backends (except for regional managed instance groups). If the backend's balancingMode is UTILIZATION, this is an optional parameter. If the backend's balancingMode is CONNECTION, and backend is attached to a backend service whose loadBalancingScheme is EXTERNAL, you must specify either this parameter, maxConnectionsPerInstance, or maxConnectionsPerEndpoint.

      Not available if the backend's balancingMode is RATE. If the loadBalancingScheme is INTERNAL, then maxConnections is not supported, even though the backend requires a balancing mode of CONNECTION.
  *   `maxConnectionsPerEndpoint` (*type:* `integer()`, *default:* `nil`) - Defines a target maximum number of simultaneous connections for an endpoint of a NEG. This is multiplied by the number of endpoints in the NEG to implicitly calculate a maximum number of target maximum simultaneous connections for the NEG. If the backend's balancingMode is CONNECTION, and the backend is attached to a backend service whose loadBalancingScheme is EXTERNAL, you must specify either this parameter, maxConnections, or maxConnectionsPerInstance.

      Not available if the backend's balancingMode is RATE. Internal TCP/UDP load balancing does not support setting maxConnectionsPerEndpoint even though its backends require a balancing mode of CONNECTION.
  *   `maxConnectionsPerInstance` (*type:* `integer()`, *default:* `nil`) - Defines a target maximum number of simultaneous connections for a single VM in a backend instance group. This is multiplied by the number of instances in the instance group to implicitly calculate a target maximum number of simultaneous connections for the whole instance group. If the backend's balancingMode is UTILIZATION, this is an optional parameter. If the backend's balancingMode is CONNECTION, and backend is attached to a backend service whose loadBalancingScheme is EXTERNAL, you must specify either this parameter, maxConnections, or maxConnectionsPerEndpoint.

      Not available if the backend's balancingMode is RATE. Internal TCP/UDP load balancing does not support setting maxConnectionsPerInstance even though its backends require a balancing mode of CONNECTION.
  *   `maxRate` (*type:* `integer()`, *default:* `nil`) - Defines a maximum number of HTTP requests per second (RPS) that the backend can handle. Valid for network endpoint group and instance group backends (except for regional managed instance groups). Must not be defined if the backend is a managed instance group that uses autoscaling based on load balancing.

      If the backend's balancingMode is UTILIZATION, this is an optional parameter. If the backend's balancingMode is RATE, you must specify maxRate, maxRatePerInstance, or maxRatePerEndpoint.

      Not available if the backend's balancingMode is CONNECTION.
  *   `maxRatePerEndpoint` (*type:* `number()`, *default:* `nil`) - Defines a maximum target for requests per second (RPS) for an endpoint of a NEG. This is multiplied by the number of endpoints in the NEG to implicitly calculate a target maximum rate for the NEG.

      If the backend's balancingMode is RATE, you must specify either this parameter, maxRate (except for regional managed instance groups), or maxRatePerInstance.

      Not available if the backend's balancingMode is CONNECTION.
  *   `maxRatePerInstance` (*type:* `number()`, *default:* `nil`) - Defines a maximum target for requests per second (RPS) for a single VM in a backend instance group. This is multiplied by the number of instances in the instance group to implicitly calculate a target maximum rate for the whole instance group.

      If the backend's balancingMode is UTILIZATION, this is an optional parameter. If the backend's balancingMode is RATE, you must specify either this parameter, maxRate (except for regional managed instance groups), or maxRatePerEndpoint.

      Not available if the backend's balancingMode is CONNECTION.
  *   `maxUtilization` (*type:* `number()`, *default:* `nil`) - Defines the maximum average backend utilization of a backend VM in an instance group. The valid range is [0.0, 1.0]. This is an optional parameter if the backend's balancingMode is UTILIZATION.

      This parameter can be used in conjunction with maxRate, maxRatePerInstance, maxConnections (except for regional managed instance groups), or maxConnectionsPerInstance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :balancingMode => String.t(),
          :capacityScaler => number(),
          :description => String.t(),
          :failover => boolean(),
          :group => String.t(),
          :maxConnections => integer(),
          :maxConnectionsPerEndpoint => integer(),
          :maxConnectionsPerInstance => integer(),
          :maxRate => integer(),
          :maxRatePerEndpoint => number(),
          :maxRatePerInstance => number(),
          :maxUtilization => number()
        }

  field(:balancingMode)
  field(:capacityScaler)
  field(:description)
  field(:failover)
  field(:group)
  field(:maxConnections)
  field(:maxConnectionsPerEndpoint)
  field(:maxConnectionsPerInstance)
  field(:maxRate)
  field(:maxRatePerEndpoint)
  field(:maxRatePerInstance)
  field(:maxUtilization)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Backend do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Backend.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Backend do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
