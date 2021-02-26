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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecuteOperationMetadata do
  @moduledoc """
  Metadata about an ongoing execution, which will be contained in the metadata field of the Operation.

  ## Attributes

  *   `actionDigest` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t`, *default:* `nil`) - The digest of the Action being executed.
  *   `stage` (*type:* `String.t`, *default:* `nil`) - The current stage of execution.
  *   `stderrStreamName` (*type:* `String.t`, *default:* `nil`) - If set, the client can use this resource name with ByteStream.Read to stream the standard error from the endpoint hosting streamed responses.
  *   `stdoutStreamName` (*type:* `String.t`, *default:* `nil`) - If set, the client can use this resource name with ByteStream.Read to stream the standard output from the endpoint hosting streamed responses.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionDigest =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t(),
          :stage => String.t(),
          :stderrStreamName => String.t(),
          :stdoutStreamName => String.t()
        }

  field(:actionDigest,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest
  )

  field(:stage)
  field(:stderrStreamName)
  field(:stdoutStreamName)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecuteOperationMetadata do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecuteOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecuteOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
