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

defmodule GoogleApi.Container.V1.Model.NodePool do
  @moduledoc """
  NodePool contains the name and configuration for a cluster&#39;s node pool. Node pools are a set of nodes (i.e. VM&#39;s), with a common configuration and specification, under the control of the cluster master. They may have a set of Kubernetes labels applied to them, which may be used to reference them during pod scheduling. They may also be resized up or down, to accommodate the workload.

  ## Attributes

  - autoscaling (NodePoolAutoscaling): Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present. Defaults to: `null`.
  - conditions ([StatusCondition]): Which conditions caused the current node pool state. Defaults to: `null`.
  - config (NodeConfig): The node configuration of the pool. Defaults to: `null`.
  - initialNodeCount (integer()): The initial node count for the pool. You must ensure that your Compute Engine &lt;a href&#x3D;\&quot;/compute/docs/resource-quotas\&quot;&gt;resource quota&lt;/a&gt; is sufficient for this number of instances. You must also have available firewall and routes quota. Defaults to: `null`.
  - instanceGroupUrls ([String.t]): [Output only] The resource URLs of the [managed instance groups](/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with this node pool. Defaults to: `null`.
  - management (NodeManagement): NodeManagement configuration for this NodePool. Defaults to: `null`.
  - maxPodsConstraint (MaxPodsConstraint): The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool. Defaults to: `null`.
  - name (String.t): The name of the node pool. Defaults to: `null`.
  - selfLink (String.t): [Output only] Server-defined URL for the resource. Defaults to: `null`.
  - status (String.t): [Output only] The status of the nodes in this pool instance. Defaults to: `null`.
    - Enum - one of [STATUS_UNSPECIFIED, PROVISIONING, RUNNING, RUNNING_WITH_ERROR, RECONCILING, STOPPING, ERROR]
  - statusMessage (String.t): [Output only] Additional information about the current status of this node pool instance, if available. Defaults to: `null`.
  - version (String.t): The version of the Kubernetes of this node. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscaling => GoogleApi.Container.V1.Model.NodePoolAutoscaling.t(),
          :conditions => list(GoogleApi.Container.V1.Model.StatusCondition.t()),
          :config => GoogleApi.Container.V1.Model.NodeConfig.t(),
          :initialNodeCount => any(),
          :instanceGroupUrls => list(any()),
          :management => GoogleApi.Container.V1.Model.NodeManagement.t(),
          :maxPodsConstraint => GoogleApi.Container.V1.Model.MaxPodsConstraint.t(),
          :name => any(),
          :selfLink => any(),
          :status => any(),
          :statusMessage => any(),
          :version => any()
        }

  field(:autoscaling, as: GoogleApi.Container.V1.Model.NodePoolAutoscaling)
  field(:conditions, as: GoogleApi.Container.V1.Model.StatusCondition, type: :list)
  field(:config, as: GoogleApi.Container.V1.Model.NodeConfig)
  field(:initialNodeCount)
  field(:instanceGroupUrls, type: :list)
  field(:management, as: GoogleApi.Container.V1.Model.NodeManagement)
  field(:maxPodsConstraint, as: GoogleApi.Container.V1.Model.MaxPodsConstraint)
  field(:name)
  field(:selfLink)
  field(:status)
  field(:statusMessage)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.NodePool do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.NodePool.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.NodePool do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
