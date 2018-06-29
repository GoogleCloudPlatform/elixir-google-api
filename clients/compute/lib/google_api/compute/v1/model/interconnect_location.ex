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

defmodule GoogleApi.Compute.V1.Model.InterconnectLocation do
  @moduledoc """
  Represents an InterconnectLocations resource. The InterconnectLocations resource describes the locations where you can connect to Google&#39;s networks. For more information, see  Colocation Facilities.

  ## Attributes

  - address (String.t): [Output Only] The postal address of the Point of Presence, each line in the address is separated by a newline character. Defaults to: `null`.
  - availabilityZone (String.t): [Output Only] Availability zone for this location. Within a metropolitan area (metro), maintenance will not be simultaneously scheduled in more than one availability zone. Example: \&quot;zone1\&quot; or \&quot;zone2\&quot;. Defaults to: `null`.
  - city (String.t): [Output Only] Metropolitan area designator that indicates which city an interconnect is located. For example: \&quot;Chicago, IL\&quot;, \&quot;Amsterdam, Netherlands\&quot;. Defaults to: `null`.
  - continent (String.t): [Output Only] Continent for this location. Defaults to: `null`.
    - Enum - one of [AFRICA, ASIA_PAC, C_AFRICA, C_ASIA_PAC, C_EUROPE, C_NORTH_AMERICA, C_SOUTH_AMERICA, EUROPE, NORTH_AMERICA, SOUTH_AMERICA]
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - description (String.t): [Output Only] An optional description of the resource. Defaults to: `null`.
  - facilityProvider (String.t): [Output Only] The name of the provider for this facility (e.g., EQUINIX). Defaults to: `null`.
  - facilityProviderFacilityId (String.t): [Output Only] A provider-assigned Identifier for this facility (e.g., Ashburn-DC1). Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - kind (String.t): [Output Only] Type of the resource. Always compute#interconnectLocation for interconnect locations. Defaults to: `null`.
  - name (String.t): [Output Only] Name of the resource. Defaults to: `null`.
  - peeringdbFacilityId (String.t): [Output Only] The peeringdb identifier for this facility (corresponding with a netfac type in peeringdb). Defaults to: `null`.
  - regionInfos ([InterconnectLocationRegionInfo]): [Output Only] A list of InterconnectLocation.RegionInfo objects, that describe parameters pertaining to the relation between this InterconnectLocation and various Google Cloud regions. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => any(),
          :availabilityZone => any(),
          :city => any(),
          :continent => any(),
          :creationTimestamp => any(),
          :description => any(),
          :facilityProvider => any(),
          :facilityProviderFacilityId => any(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :peeringdbFacilityId => any(),
          :regionInfos => list(GoogleApi.Compute.V1.Model.InterconnectLocationRegionInfo.t()),
          :selfLink => any()
        }

  field(:address)
  field(:availabilityZone)
  field(:city)
  field(:continent)
  field(:creationTimestamp)
  field(:description)
  field(:facilityProvider)
  field(:facilityProviderFacilityId)
  field(:id)
  field(:kind)
  field(:name)
  field(:peeringdbFacilityId)
  field(:regionInfos, as: GoogleApi.Compute.V1.Model.InterconnectLocationRegionInfo, type: :list)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectLocation do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
