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

defmodule GoogleApi.Container.V1.Model.Operation do
  @moduledoc """
  This operation resource represents operations that may have happened or are happening on the cluster. All fields are output only.

  ## Attributes

  - clusterConditions ([StatusCondition]): Which conditions caused the current cluster state. Defaults to: `null`.
  - detail (String.t): Detailed operation progress, if available. Defaults to: `null`.
  - endTime (String.t): [Output only] The time the operation completed, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format. Defaults to: `null`.
  - location (String.t): [Output only] The name of the Google Compute Engine [zone](/compute/docs/regions-zones/regions-zones#available) or [region](/compute/docs/regions-zones/regions-zones#available) in which the cluster resides. Defaults to: `null`.
  - name (String.t): The server-assigned ID for the operation. Defaults to: `null`.
  - nodepoolConditions ([StatusCondition]): Which conditions caused the current node pool state. Defaults to: `null`.
  - operationType (String.t): The operation type. Defaults to: `null`.
    - Enum - one of [TYPE_UNSPECIFIED, CREATE_CLUSTER, DELETE_CLUSTER, UPGRADE_MASTER, UPGRADE_NODES, REPAIR_CLUSTER, UPDATE_CLUSTER, CREATE_NODE_POOL, DELETE_NODE_POOL, SET_NODE_POOL_MANAGEMENT, AUTO_REPAIR_NODES, AUTO_UPGRADE_NODES, SET_LABELS, SET_MASTER_AUTH, SET_NODE_POOL_SIZE, SET_NETWORK_POLICY, SET_MAINTENANCE_POLICY]
  - selfLink (String.t): Server-defined URL for the resource. Defaults to: `null`.
  - startTime (String.t): [Output only] The time the operation started, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format. Defaults to: `null`.
  - status (String.t): The current status of the operation. Defaults to: `null`.
    - Enum - one of [STATUS_UNSPECIFIED, PENDING, RUNNING, DONE, ABORTING]
  - statusMessage (String.t): If an error has occurred, a textual description of the error. Defaults to: `null`.
  - targetLink (String.t): Server-defined URL for the target of the operation. Defaults to: `null`.
  - zone (String.t): The name of the Google Compute Engine [zone](/compute/docs/zones#available) in which the operation is taking place. This field is deprecated, use location instead. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterConditions => list(GoogleApi.Container.V1.Model.StatusCondition.t()),
          :detail => any(),
          :endTime => any(),
          :location => any(),
          :name => any(),
          :nodepoolConditions => list(GoogleApi.Container.V1.Model.StatusCondition.t()),
          :operationType => any(),
          :selfLink => any(),
          :startTime => any(),
          :status => any(),
          :statusMessage => any(),
          :targetLink => any(),
          :zone => any()
        }

  field(:clusterConditions, as: GoogleApi.Container.V1.Model.StatusCondition, type: :list)
  field(:detail)
  field(:endTime)
  field(:location)
  field(:name)
  field(:nodepoolConditions, as: GoogleApi.Container.V1.Model.StatusCondition, type: :list)
  field(:operationType)
  field(:selfLink)
  field(:startTime)
  field(:status)
  field(:statusMessage)
  field(:targetLink)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.Operation do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.Operation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.Operation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
