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

defmodule GoogleApi.ToolResults.V1beta3.Model.TestIssue do
  @moduledoc """
  An issue detected occurring during a test execution.

  ## Attributes

  - errorMessage (String): A brief human-readable message describing the issue. Required. Defaults to: `null`.
  - severity (String): Severity of issue. Required. Defaults to: `null`.
    - Enum - one of [info, severe, unspecifiedSeverity, warning]
  - stackTrace (StackTrace): Deprecated in favor of stack trace fields inside specific warnings. Defaults to: `null`.
  - type (String): Type of issue. Required. Defaults to: `null`.
    - Enum - one of [anr, fatalException, nativeCrash, unspecifiedType]
  - warning (Any): Warning message with additional details of the issue. Should always be a message from com.google.devtools.toolresults.v1.warnings Required. Defaults to: `null`.
  """

  defstruct [
    :"errorMessage",
    :"severity",
    :"stackTrace",
    :"type",
    :"warning"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.TestIssue do
  import GoogleApi.ToolResults.V1beta3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"stackTrace", :struct, GoogleApi.ToolResults.V1beta3.Model.StackTrace, options)
    |> deserialize(:"warning", :struct, GoogleApi.ToolResults.V1beta3.Model.Any, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.TestIssue do
  def encode(value, options) do
    GoogleApi.ToolResults.V1beta3.Deserializer.serialize_non_nil(value, options)
  end
end

