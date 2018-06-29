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

defmodule GoogleApi.Compute.V1.Model.Subnetwork do
  @moduledoc """
  A Subnetwork resource. (&#x3D;&#x3D; resource_for beta.subnetworks &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.subnetworks &#x3D;&#x3D;)

  ## Attributes

  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time. Defaults to: `null`.
  - enableFlowLogs (boolean()): Whether to enable flow logging for this subnetwork. Defaults to: `null`.
  - fingerprint (binary()): Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a Subnetwork. An up-to-date fingerprint must be provided in order to update the Subnetwork.  To see the latest fingerprint, make a get() request to retrieve a Subnetwork. Defaults to: `null`.
  - gatewayAddress (String.t): [Output Only] The gateway address for default routes to reach destination addresses outside this subnetwork. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - ipCidrRange (String.t): The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field can be set only at resource creation time. Defaults to: `null`.
  - kind (String.t): [Output Only] Type of the resource. Always compute#subnetwork for Subnetwork resources. Defaults to: `null`.
  - name (String.t): The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - network (String.t): The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. Only networks that are in the distributed mode can have subnetworks. This field can be set only at resource creation time. Defaults to: `null`.
  - privateIpGoogleAccess (boolean()): Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess. Defaults to: `null`.
  - region (String.t): URL of the region where the Subnetwork resides. This field can be set only at resource creation time. Defaults to: `null`.
  - secondaryIpRanges ([SubnetworkSecondaryRange]): An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => any(),
          :description => any(),
          :enableFlowLogs => any(),
          :fingerprint => any(),
          :gatewayAddress => any(),
          :id => any(),
          :ipCidrRange => any(),
          :kind => any(),
          :name => any(),
          :network => any(),
          :privateIpGoogleAccess => any(),
          :region => any(),
          :secondaryIpRanges => list(GoogleApi.Compute.V1.Model.SubnetworkSecondaryRange.t()),
          :selfLink => any()
        }

  field(:creationTimestamp)
  field(:description)
  field(:enableFlowLogs)
  field(:fingerprint)
  field(:gatewayAddress)
  field(:id)
  field(:ipCidrRange)
  field(:kind)
  field(:name)
  field(:network)
  field(:privateIpGoogleAccess)
  field(:region)
  field(:secondaryIpRanges, as: GoogleApi.Compute.V1.Model.SubnetworkSecondaryRange, type: :list)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Subnetwork do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Subnetwork.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Subnetwork do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
