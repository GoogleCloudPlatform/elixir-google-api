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

defmodule GoogleApi.ToolResults.V1beta3.Model.ToolExitCode do
  @moduledoc """
  Exit code from a tool execution.

  ## Attributes

  - number (integer()): Tool execution exit code. A value of 0 means that the execution was successful.

  - In response: always set - In create/update request: always set Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :number => integer()
        }

  field(:number)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.ToolExitCode do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.ToolExitCode.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.ToolExitCode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
