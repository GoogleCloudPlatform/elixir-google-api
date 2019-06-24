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

defmodule GoogleApi.ToolResults.V1beta3.Model.ToolExecution do
  @moduledoc """
  An execution of an arbitrary tool. It could be a test runner or a tool copying artifacts or deploying code.

  ## Attributes

  *   `commandLineArguments` (*type:* `list(String.t)`, *default:* `nil`) - The full tokenized command line including the program name (equivalent to argv in a C program).

      - In response: present if set by create request - In create request: optional - In update request: never set
  *   `exitCode` (*type:* `GoogleApi.ToolResults.V1beta3.Model.ToolExitCode.t`, *default:* `nil`) - Tool execution exit code. This field will be set once the tool has exited.

      - In response: present if set by create/update request - In create request: optional - In update request: optional, a FAILED_PRECONDITION error will be returned if an exit_code is already set.
  *   `toolLogs` (*type:* `list(GoogleApi.ToolResults.V1beta3.Model.FileReference.t)`, *default:* `nil`) - References to any plain text logs output the tool execution.

      This field can be set before the tool has exited in order to be able to have access to a live view of the logs while the tool is running.

      The maximum allowed number of tool logs per step is 1000.

      - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  *   `toolOutputs` (*type:* `list(GoogleApi.ToolResults.V1beta3.Model.ToolOutputReference.t)`, *default:* `nil`) - References to opaque files of any format output by the tool execution.

      The maximum allowed number of tool outputs per step is 1000.

      - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commandLineArguments => list(String.t()),
          :exitCode => GoogleApi.ToolResults.V1beta3.Model.ToolExitCode.t(),
          :toolLogs => list(GoogleApi.ToolResults.V1beta3.Model.FileReference.t()),
          :toolOutputs => list(GoogleApi.ToolResults.V1beta3.Model.ToolOutputReference.t())
        }

  field(:commandLineArguments, type: :list)
  field(:exitCode, as: GoogleApi.ToolResults.V1beta3.Model.ToolExitCode)
  field(:toolLogs, as: GoogleApi.ToolResults.V1beta3.Model.FileReference, type: :list)
  field(:toolOutputs, as: GoogleApi.ToolResults.V1beta3.Model.ToolOutputReference, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.ToolExecution do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.ToolExecution.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.ToolExecution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
