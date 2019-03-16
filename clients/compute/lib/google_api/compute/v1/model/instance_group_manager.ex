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

defmodule GoogleApi.Compute.V1.Model.InstanceGroupManager do
  @moduledoc """
  An Instance Group Manager resource. (&#x3D;&#x3D; resource_for beta.instanceGroupManagers &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.instanceGroupManagers &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for beta.regionInstanceGroupManagers &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.regionInstanceGroupManagers &#x3D;&#x3D;)

  ## Attributes

  - autoHealingPolicies ([InstanceGroupManagerAutoHealingPolicy]): The autohealing policy for this managed instance group. You can specify only one value. Defaults to: `null`.
  - baseInstanceName (String.t): The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035. Defaults to: `null`.
  - creationTimestamp (String.t): [Output Only] The creation timestamp for this managed instance group in RFC3339 text format. Defaults to: `null`.
  - currentActions (InstanceGroupManagerActionsSummary): [Output Only] The list of instance actions and the number of instances in this managed instance group that are scheduled for each of those actions. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to: `null`.
  - distributionPolicy (DistributionPolicy): Policy specifying intended distribution of instances in regional managed instance group. Defaults to: `null`.
  - fingerprint (binary()): Fingerprint of this resource. This field may be used in optimistic locking. It will be ignored when inserting an InstanceGroupManager. An up-to-date fingerprint must be provided in order to update the InstanceGroupManager, otherwise the request will fail with error 412 conditionNotMet.  To see the latest fingerprint, make a get() request to retrieve an InstanceGroupManager. Defaults to: `null`.
  - id (String.t): [Output Only] A unique identifier for this resource type. The server generates this identifier. Defaults to: `null`.
  - instanceGroup (String.t): [Output Only] The URL of the Instance Group resource. Defaults to: `null`.
  - instanceTemplate (String.t): The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. Defaults to: `null`.
  - kind (String.t): [Output Only] The resource type, which is always compute#instanceGroupManager for managed instance groups. Defaults to: `null`.
  - name (String.t): The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035. Defaults to: `null`.
  - namedPorts ([NamedPort]): Named ports configured for the Instance Groups complementary to this Instance Group Manager. Defaults to: `null`.
  - region (String.t): [Output Only] The URL of the region where the managed instance group resides (for regional resources). Defaults to: `null`.
  - selfLink (String.t): [Output Only] The URL for this managed instance group. The server defines this URL. Defaults to: `null`.
  - status (InstanceGroupManagerStatus): [Output Only] The status of this managed instance group. Defaults to: `null`.
  - targetPools ([String.t]): The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group. Defaults to: `null`.
  - targetSize (integer()): The target number of running instances for this managed instance group. Deleting or abandoning instances reduces this number. Resizing the group changes this number. Defaults to: `null`.
  - updatePolicy (InstanceGroupManagerUpdatePolicy): The update policy for this managed instance group. Defaults to: `null`.
  - versions ([InstanceGroupManagerVersion]): Specifies the instance templates used by this managed instance group to create instances.  Each version is defined by an instanceTemplate. Every template can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates. Defaults to: `null`.
  - zone (String.t): [Output Only] The URL of the zone where the managed instance group is located (for zonal resources). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoHealingPolicies =>
            list(GoogleApi.Compute.V1.Model.InstanceGroupManagerAutoHealingPolicy.t()),
          :baseInstanceName => any(),
          :creationTimestamp => any(),
          :currentActions => GoogleApi.Compute.V1.Model.InstanceGroupManagerActionsSummary.t(),
          :description => any(),
          :distributionPolicy => GoogleApi.Compute.V1.Model.DistributionPolicy.t(),
          :fingerprint => any(),
          :id => any(),
          :instanceGroup => any(),
          :instanceTemplate => any(),
          :kind => any(),
          :name => any(),
          :namedPorts => list(GoogleApi.Compute.V1.Model.NamedPort.t()),
          :region => any(),
          :selfLink => any(),
          :status => GoogleApi.Compute.V1.Model.InstanceGroupManagerStatus.t(),
          :targetPools => list(any()),
          :targetSize => any(),
          :updatePolicy => GoogleApi.Compute.V1.Model.InstanceGroupManagerUpdatePolicy.t(),
          :versions => list(GoogleApi.Compute.V1.Model.InstanceGroupManagerVersion.t()),
          :zone => any()
        }

  field(
    :autoHealingPolicies,
    as: GoogleApi.Compute.V1.Model.InstanceGroupManagerAutoHealingPolicy,
    type: :list
  )

  field(:baseInstanceName)
  field(:creationTimestamp)
  field(:currentActions, as: GoogleApi.Compute.V1.Model.InstanceGroupManagerActionsSummary)
  field(:description)
  field(:distributionPolicy, as: GoogleApi.Compute.V1.Model.DistributionPolicy)
  field(:fingerprint)
  field(:id)
  field(:instanceGroup)
  field(:instanceTemplate)
  field(:kind)
  field(:name)
  field(:namedPorts, as: GoogleApi.Compute.V1.Model.NamedPort, type: :list)
  field(:region)
  field(:selfLink)
  field(:status, as: GoogleApi.Compute.V1.Model.InstanceGroupManagerStatus)
  field(:targetPools, type: :list)
  field(:targetSize)
  field(:updatePolicy, as: GoogleApi.Compute.V1.Model.InstanceGroupManagerUpdatePolicy)
  field(:versions, as: GoogleApi.Compute.V1.Model.InstanceGroupManagerVersion, type: :list)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManager do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroupManager.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManager do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
