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

defmodule GoogleApi.GameServices.V1beta.Model.DeployedFleetStatus do
  @moduledoc """
  DeployedFleetStatus has details about the Agones fleets such as how many
  are running, how many allocated, and so on.

  ## Attributes

  *   `allocatedReplicas` (*type:* `String.t`, *default:* `nil`) - The number of GameServer replicas in the ALLOCATED state in this fleet.
  *   `readyReplicas` (*type:* `String.t`, *default:* `nil`) - The number of GameServer replicas in the READY state in this fleet.
  *   `replicas` (*type:* `String.t`, *default:* `nil`) - The total number of current GameServer replicas in this fleet.
  *   `reservedReplicas` (*type:* `String.t`, *default:* `nil`) - The number of GameServer replicas in the RESERVED state in this fleet.
      Reserved instances won't be deleted on scale down, but won't cause
      an autoscaler to scale up.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allocatedReplicas => String.t(),
          :readyReplicas => String.t(),
          :replicas => String.t(),
          :reservedReplicas => String.t()
        }

  field(:allocatedReplicas)
  field(:readyReplicas)
  field(:replicas)
  field(:reservedReplicas)
end

defimpl Poison.Decoder, for: GoogleApi.GameServices.V1beta.Model.DeployedFleetStatus do
  def decode(value, options) do
    GoogleApi.GameServices.V1beta.Model.DeployedFleetStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GameServices.V1beta.Model.DeployedFleetStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
