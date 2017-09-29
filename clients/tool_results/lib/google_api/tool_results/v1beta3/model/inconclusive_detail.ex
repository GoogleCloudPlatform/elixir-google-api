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

defmodule GoogleApi.ToolResults.V1beta3.Model.InconclusiveDetail do
  @moduledoc """
  

  ## Attributes

  - abortedByUser (Boolean): If the end user aborted the test execution before a pass or fail could be determined. For example, the user pressed ctrl-c which sent a kill signal to the test runner while the test was running. Defaults to: `null`.
  - infrastructureFailure (Boolean): If the test runner could not determine success or failure because the test depends on a component other than the system under test which failed.  For example, a mobile test requires provisioning a device where the test executes, and that provisioning can fail. Defaults to: `null`.
  """

  defstruct [
    :"abortedByUser",
    :"infrastructureFailure"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.InconclusiveDetail do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.InconclusiveDetail do
  def encode(value, options) do
    GoogleApi.ToolResults.V1beta3.Deserializer.serialize_non_nil(value, options)
  end
end

