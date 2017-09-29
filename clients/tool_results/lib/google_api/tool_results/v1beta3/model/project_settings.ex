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

defmodule GoogleApi.ToolResults.V1beta3.Model.ProjectSettings do
  @moduledoc """
  Per-project settings for the Tool Results service.

  ## Attributes

  - defaultBucket (String): The name of the Google Cloud Storage bucket to which results are written.  By default, this is unset.  In update request: optional In response: optional Defaults to: `null`.
  - name (String): The name of the project&#39;s settings.  Always of the form: projects/{project-id}/settings  In update request: never set In response: always set Defaults to: `null`.
  """

  defstruct [
    :"defaultBucket",
    :"name"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.ProjectSettings do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.ProjectSettings do
  def encode(value, options) do
    GoogleApi.ToolResults.V1beta3.Deserializer.serialize_non_nil(value, options)
  end
end

