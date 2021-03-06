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

defmodule GoogleApi.GameServices.V1.Model.DeployedFleetDetails do
  @moduledoc """
  Details of the deployed Agones fleet.

  ## Attributes

  *   `deployedAutoscaler` (*type:* `GoogleApi.GameServices.V1.Model.DeployedFleetAutoscaler.t`, *default:* `nil`) - Information about the Agones autoscaler for that fleet.
  *   `deployedFleet` (*type:* `GoogleApi.GameServices.V1.Model.DeployedFleet.t`, *default:* `nil`) - Information about the Agones fleet.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployedAutoscaler =>
            GoogleApi.GameServices.V1.Model.DeployedFleetAutoscaler.t() | nil,
          :deployedFleet => GoogleApi.GameServices.V1.Model.DeployedFleet.t() | nil
        }

  field(:deployedAutoscaler, as: GoogleApi.GameServices.V1.Model.DeployedFleetAutoscaler)
  field(:deployedFleet, as: GoogleApi.GameServices.V1.Model.DeployedFleet)
end

defimpl Poison.Decoder, for: GoogleApi.GameServices.V1.Model.DeployedFleetDetails do
  def decode(value, options) do
    GoogleApi.GameServices.V1.Model.DeployedFleetDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GameServices.V1.Model.DeployedFleetDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
