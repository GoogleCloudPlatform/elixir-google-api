# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Container.V1.Model.CreateNodePoolRequest do
  @moduledoc """
  CreateNodePoolRequest creates a node pool for a cluster.

  ## Attributes

  *   `clusterId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the cluster.
      This field has been deprecated and replaced by the parent field.
  *   `nodePool` (*type:* `GoogleApi.Container.V1.Model.NodePool.t`, *default:* `nil`) - The node pool to create.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The parent (project, location, cluster id) where the node pool will be
      created. Specified in the format
      'projects/*/locations/*/clusters/*'.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The Google Developers Console [project ID or project
      number](https://developers.google.com/console/help/new/#projectnumber).
      This field has been deprecated and replaced by the parent field.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the Google Compute Engine
      [zone](/compute/docs/zones#available) in which the cluster
      resides.
      This field has been deprecated and replaced by the parent field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterId => String.t(),
          :nodePool => GoogleApi.Container.V1.Model.NodePool.t(),
          :parent => String.t(),
          :projectId => String.t(),
          :zone => String.t()
        }

  field(:clusterId)
  field(:nodePool, as: GoogleApi.Container.V1.Model.NodePool)
  field(:parent)
  field(:projectId)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.CreateNodePoolRequest do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.CreateNodePoolRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.CreateNodePoolRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
