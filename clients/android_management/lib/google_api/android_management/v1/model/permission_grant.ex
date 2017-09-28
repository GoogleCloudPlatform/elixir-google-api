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

defmodule GoogleApi.AndroidManagement.V1.Model.PermissionGrant do
  @moduledoc """
  Configuration for an Android permission and its grant state.

  ## Attributes

  - permission (String): The android permission, e.g. android.permission.READ_CALENDAR. Defaults to: `null`.
  - policy (String): The policy for granting the permission. Defaults to: `null`.
    - Enum - one of [PERMISSION_POLICY_UNSPECIFIED, PROMPT, GRANT, DENY]
  """

  defstruct [
    :"permission",
    :"policy"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.PermissionGrant do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.PermissionGrant do
  def encode(value, options) do
    GoogleApi.AndroidManagement.V1.Deserializer.serialize_non_nil(value, options)
  end
end

