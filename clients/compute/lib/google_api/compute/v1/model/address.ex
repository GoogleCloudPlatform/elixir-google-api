# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.Address do
  @moduledoc """
  A reserved address resource. (&#x3D;&#x3D; resource_for beta.addresses &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.addresses &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for beta.globalAddresses &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.globalAddresses &#x3D;&#x3D;)

  ## Attributes

  - address (String.t): The static IP address represented by this resource. Defaults to: `null`.
  - addressType (String.t): The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL. Defaults to: `null`.
    - Enum - one of [EXTERNAL, INTERNAL, UNSPECIFIED_TYPE]
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - ipVersion (String.t): The IP Version that will be used by this address. Valid options are IPV4 or IPV6. This can only be specified for a global address. Defaults to: `null`.
    - Enum - one of [IPV4, IPV6, UNSPECIFIED_VERSION]
  - kind (String.t): [Output Only] Type of the resource. Always compute#address for addresses. Defaults to: `null`.
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - network (String.t): The URL of the network in which to reserve the address. This field can only be used with INTERNAL type with VPC_PEERING purpose. Defaults to: `null`.
  - networkTier (String.t): This signifies the networking tier used for configuring this Address and can only take the following values: PREMIUM, STANDARD. Global forwarding rules can only be Premium Tier. Regional forwarding rules can be either Premium or Standard Tier. Standard Tier addresses applied to regional forwarding rules can be used with any external load balancer. Regional forwarding rules in Premium Tier can only be used with a Network load balancer.  If this field is not specified, it is assumed to be PREMIUM. Defaults to: `null`.
    - Enum - one of [PREMIUM, STANDARD]
  - prefixLength (integer()): The prefix length if the resource reprensents an IP range. Defaults to: `null`.
  - purpose (String.t): The purpose of resource, only used with INTERNAL type. Defaults to: `null`.
    - Enum - one of [DNS_RESOLVER, GCE_ENDPOINT, VPC_PEERING]
  - region (String.t): [Output Only] URL of the region where the regional address resides. This field is not applicable to global addresses. You must specify this field as part of the HTTP request URL. You cannot set this field in the request body. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  - status (String.t): [Output Only] The status of the address, which can be one of RESERVING, RESERVED, or IN_USE. An address that is RESERVING is currently in the process of being reserved. A RESERVED address is currently reserved and available to use. An IN_USE address is currently being used by another resource and is not available. Defaults to: `null`.
    - Enum - one of [IN_USE, RESERVED, RESERVING]
  - subnetwork (String.t): The URL of the subnetwork in which to reserve the address. If an IP address is specified, it must be within the subnetwork&#39;s IP range. This field can only be used with INTERNAL type with GCE_ENDPOINT/DNS_RESOLVER purposes. Defaults to: `null`.
  - users ([String.t]): [Output Only] The URLs of the resources that are using this address. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => any(),
          :addressType => any(),
          :creationTimestamp => any(),
          :description => any(),
          :id => any(),
          :ipVersion => any(),
          :kind => any(),
          :name => any(),
          :network => any(),
          :networkTier => any(),
          :prefixLength => any(),
          :purpose => any(),
          :region => any(),
          :selfLink => any(),
          :status => any(),
          :subnetwork => any(),
          :users => list(any())
        }

  field(:address)
  field(:addressType)
  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:ipVersion)
  field(:kind)
  field(:name)
  field(:network)
  field(:networkTier)
  field(:prefixLength)
  field(:purpose)
  field(:region)
  field(:selfLink)
  field(:status)
  field(:subnetwork)
  field(:users, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Address do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Address.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Address do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
