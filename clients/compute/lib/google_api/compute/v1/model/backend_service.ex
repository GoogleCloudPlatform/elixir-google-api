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

defmodule GoogleApi.Compute.V1.Model.BackendService do
  @moduledoc """
  Represents a Backend Service resource.

  A backend service contains configuration values for Google Cloud Platform load balancing services.

  For more information, read Backend Services.

  (== resource_for v1.backendService ==) (== resource_for beta.backendService ==)

  ## Attributes

  *   `affinityCookieTtlSec` (*type:* `integer()`, *default:* `nil`) - If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value is one day (86,400).
  *   `backends` (*type:* `list(GoogleApi.Compute.V1.Model.Backend.t)`, *default:* `nil`) - The list of backends that serve this BackendService.
  *   `cdnPolicy` (*type:* `GoogleApi.Compute.V1.Model.BackendServiceCdnPolicy.t`, *default:* `nil`) - Cloud CDN configuration for this BackendService.
  *   `circuitBreakers` (*type:* `GoogleApi.Compute.V1.Model.CircuitBreakers.t`, *default:* `nil`) - Settings controlling the volume of connections to a backend service. If not set, this feature is considered disabled.

      This field is applicable to either:  
      - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. 
      - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  *   `connectionDraining` (*type:* `GoogleApi.Compute.V1.Model.ConnectionDraining.t`, *default:* `nil`) - 
  *   `consistentHash` (*type:* `GoogleApi.Compute.V1.Model.ConsistentHashLoadBalancerSettings.t`, *default:* `nil`) - Consistent Hash-based load balancing can be used to provide soft session affinity based on HTTP headers, cookies or other properties. This load balancing policy is applicable only for HTTP connections. The affinity to a particular destination host will be lost when one or more hosts are added/removed from the destination service. This field specifies parameters that control consistent hashing. This field is only applicable when localityLbPolicy is set to MAGLEV or RING_HASH.

      This field is applicable to either:  
      - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. 
      - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `customRequestHeaders` (*type:* `list(String.t)`, *default:* `nil`) - Headers that the HTTP/S load balancer should add to proxied requests.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `enableCDN` (*type:* `boolean()`, *default:* `nil`) - If true, enables Cloud CDN for the backend service. Only applicable if the loadBalancingScheme is EXTERNAL and the protocol is HTTP or HTTPS.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a BackendService. An up-to-date fingerprint must be provided in order to update the BackendService, otherwise the request will fail with error 412 conditionNotMet.

      To see the latest fingerprint, make a get() request to retrieve a BackendService.
  *   `healthChecks` (*type:* `list(String.t)`, *default:* `nil`) - The list of URLs to the HttpHealthCheck or HttpsHealthCheck resource for health checking this BackendService. Currently at most one health check can be specified, and a health check is required for Compute Engine backend services. A health check must not be specified for App Engine backend and Cloud Function backend.

      For internal load balancing, a URL to a HealthCheck resource must be specified instead.
  *   `iap` (*type:* `GoogleApi.Compute.V1.Model.BackendServiceIAP.t`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#backendService`) - [Output Only] Type of resource. Always compute#backendService for backend services.
  *   `loadBalancingScheme` (*type:* `String.t`, *default:* `nil`) - Specifies the load balancer type. Choose EXTERNAL for load balancers that receive traffic from external clients. Choose INTERNAL for Internal TCP/UDP Load Balancing. Choose INTERNAL_MANAGED for Internal HTTP(S) Load Balancing. Choose INTERNAL_SELF_MANAGED for Traffic Director. A backend service created for one type of load balancing cannot be used with another. For more information, refer to Choosing a load balancer.
  *   `localityLbPolicy` (*type:* `String.t`, *default:* `nil`) - The load balancing algorithm used within the scope of the locality. The possible values are:  
      - ROUND_ROBIN: This is a simple policy in which each healthy backend is selected in round robin order. This is the default. 
      - LEAST_REQUEST: An O(1) algorithm which selects two random healthy hosts and picks the host which has fewer active requests. 
      - RING_HASH: The ring/modulo hash load balancer implements consistent hashing to backends. The algorithm has the property that the addition/removal of a host from a set of N hosts only affects 1/N of the requests. 
      - RANDOM: The load balancer selects a random healthy host. 
      - ORIGINAL_DESTINATION: Backend host is selected based on the client connection metadata, i.e., connections are opened to the same address as the destination address of the incoming connection before the connection was redirected to the load balancer. 
      - MAGLEV: used as a drop in replacement for the ring hash load balancer. Maglev is not as stable as ring hash but has faster table lookup build times and host selection times. For more information about Maglev, refer to https://ai.google/research/pubs/pub44824 

      This field is applicable to either:  
      - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. 
      - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.  

      If sessionAffinity is not NONE, and this field is not set to >MAGLEV or RING_HASH, session affinity settings will not take effect.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `outlierDetection` (*type:* `GoogleApi.Compute.V1.Model.OutlierDetection.t`, *default:* `nil`) - Settings controlling the eviction of unhealthy hosts from the load balancing pool for the backend service. If not set, this feature is considered disabled.

      This field is applicable to either:  
      - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. 
      - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Deprecated in favor of portName. The TCP port to connect on the backend. The default value is 80.

      This cannot be used if the loadBalancingScheme is INTERNAL (Internal TCP/UDP Load Balancing).
  *   `portName` (*type:* `String.t`, *default:* `nil`) - A named port on a backend instance group representing the port for communication to the backend VMs in that group. Required when the loadBalancingScheme is EXTERNAL and the backends are instance groups. The named port must be defined on each backend instance group. This parameter has no meaning if the backends are NEGs.



      Must be omitted when the loadBalancingScheme is INTERNAL (Internal TCP/UDP Load Blaancing).
  *   `protocol` (*type:* `String.t`, *default:* `nil`) - The protocol this BackendService uses to communicate with backends.

      Possible values are HTTP, HTTPS, HTTP2, TCP, SSL, or UDP, depending on the chosen load balancer or Traffic Director configuration. Refer to the documentation for the load balancer or for Traffic Director for more information.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the regional backend service resides. This field is not applicable to global backend services. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `securityPolicy` (*type:* `String.t`, *default:* `nil`) - [Output Only] The resource URL for the security policy associated with this backend service.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `sessionAffinity` (*type:* `String.t`, *default:* `nil`) - Type of session affinity to use. The default is NONE. Session affinity is not applicable if the --protocol is UDP.

      When the loadBalancingScheme is EXTERNAL, possible values are NONE, CLIENT_IP, or GENERATED_COOKIE. You can use GENERATED_COOKIE if the protocol is HTTP or HTTPS.

      When the loadBalancingScheme is INTERNAL, possible values are NONE, CLIENT_IP, CLIENT_IP_PROTO, or CLIENT_IP_PORT_PROTO.

      When the loadBalancingScheme is INTERNAL_SELF_MANAGED, or INTERNAL_MANAGED, possible values are NONE, CLIENT_IP, GENERATED_COOKIE, HEADER_FIELD, or HTTP_COOKIE.
  *   `timeoutSec` (*type:* `integer()`, *default:* `nil`) - The backend service timeout has a different meaning depending on the type of load balancer. For more information read,  Backend service settings The default is 30 seconds.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :affinityCookieTtlSec => integer(),
          :backends => list(GoogleApi.Compute.V1.Model.Backend.t()),
          :cdnPolicy => GoogleApi.Compute.V1.Model.BackendServiceCdnPolicy.t(),
          :circuitBreakers => GoogleApi.Compute.V1.Model.CircuitBreakers.t(),
          :connectionDraining => GoogleApi.Compute.V1.Model.ConnectionDraining.t(),
          :consistentHash => GoogleApi.Compute.V1.Model.ConsistentHashLoadBalancerSettings.t(),
          :creationTimestamp => String.t(),
          :customRequestHeaders => list(String.t()),
          :description => String.t(),
          :enableCDN => boolean(),
          :fingerprint => String.t(),
          :healthChecks => list(String.t()),
          :iap => GoogleApi.Compute.V1.Model.BackendServiceIAP.t(),
          :id => String.t(),
          :kind => String.t(),
          :loadBalancingScheme => String.t(),
          :localityLbPolicy => String.t(),
          :name => String.t(),
          :outlierDetection => GoogleApi.Compute.V1.Model.OutlierDetection.t(),
          :port => integer(),
          :portName => String.t(),
          :protocol => String.t(),
          :region => String.t(),
          :securityPolicy => String.t(),
          :selfLink => String.t(),
          :sessionAffinity => String.t(),
          :timeoutSec => integer()
        }

  field(:affinityCookieTtlSec)
  field(:backends, as: GoogleApi.Compute.V1.Model.Backend, type: :list)
  field(:cdnPolicy, as: GoogleApi.Compute.V1.Model.BackendServiceCdnPolicy)
  field(:circuitBreakers, as: GoogleApi.Compute.V1.Model.CircuitBreakers)
  field(:connectionDraining, as: GoogleApi.Compute.V1.Model.ConnectionDraining)
  field(:consistentHash, as: GoogleApi.Compute.V1.Model.ConsistentHashLoadBalancerSettings)
  field(:creationTimestamp)
  field(:customRequestHeaders, type: :list)
  field(:description)
  field(:enableCDN)
  field(:fingerprint)
  field(:healthChecks, type: :list)
  field(:iap, as: GoogleApi.Compute.V1.Model.BackendServiceIAP)
  field(:id)
  field(:kind)
  field(:loadBalancingScheme)
  field(:localityLbPolicy)
  field(:name)
  field(:outlierDetection, as: GoogleApi.Compute.V1.Model.OutlierDetection)
  field(:port)
  field(:portName)
  field(:protocol)
  field(:region)
  field(:securityPolicy)
  field(:selfLink)
  field(:sessionAffinity)
  field(:timeoutSec)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.BackendService do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.BackendService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.BackendService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
