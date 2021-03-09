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

defmodule GoogleApi.GameServices.V1beta.Model.TargetFleetDetails do
  @moduledoc """
  Details of the target Agones fleet.

  ## Attributes

  *   `autoscaler` (*type:* `GoogleApi.GameServices.V1beta.Model.TargetFleetAutoscaler.t`, *default:* `nil`) - Reference to target Agones fleet autoscaling policy.
  *   `fleet` (*type:* `GoogleApi.GameServices.V1beta.Model.TargetFleet.t`, *default:* `nil`) - Reference to target Agones fleet.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscaler => GoogleApi.GameServices.V1beta.Model.TargetFleetAutoscaler.t() | nil,
          :fleet => GoogleApi.GameServices.V1beta.Model.TargetFleet.t() | nil
        }

  field(:autoscaler, as: GoogleApi.GameServices.V1beta.Model.TargetFleetAutoscaler)
  field(:fleet, as: GoogleApi.GameServices.V1beta.Model.TargetFleet)
end

defimpl Poison.Decoder, for: GoogleApi.GameServices.V1beta.Model.TargetFleetDetails do
  def decode(value, options) do
    GoogleApi.GameServices.V1beta.Model.TargetFleetDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GameServices.V1beta.Model.TargetFleetDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
