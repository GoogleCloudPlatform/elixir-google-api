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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange do
  @moduledoc """
  Supported range of priorities, including boundaries.

  ## Attributes

  *   `maxPriority` (*type:* `integer()`, *default:* `nil`) - The maximum numeric value for this priority range, which represents the least urgent task or shortest retained item.
  *   `minPriority` (*type:* `integer()`, *default:* `nil`) - The minimum numeric value for this priority range, which represents the most urgent task or longest retained item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxPriority => integer() | nil,
          :minPriority => integer() | nil
        }

  field(:maxPriority)
  field(:minPriority)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
