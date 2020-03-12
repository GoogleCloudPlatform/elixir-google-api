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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutionCapabilities do
  @moduledoc """
  Capabilities of the remote execution system.

  ## Attributes

  *   `digestFunction` (*type:* `String.t`, *default:* `nil`) - Remote execution may only support a single digest function.
  *   `execEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether remote execution is enabled for the particular server/instance.
  *   `executionPriorityCapabilities` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2PriorityCapabilities.t`, *default:* `nil`) - Supported execution priority range.
  *   `supportedNodeProperties` (*type:* `list(String.t)`, *default:* `nil`) - Supported node properties.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :digestFunction => String.t(),
          :execEnabled => boolean(),
          :executionPriorityCapabilities =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2PriorityCapabilities.t(),
          :supportedNodeProperties => list(String.t())
        }

  field(:digestFunction)
  field(:execEnabled)

  field(:executionPriorityCapabilities,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2PriorityCapabilities
  )

  field(:supportedNodeProperties, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutionCapabilities do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutionCapabilities.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutionCapabilities do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
