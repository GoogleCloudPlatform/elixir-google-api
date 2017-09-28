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

defmodule GoogleApi.AndroidManagement.V1.Model.SoftwareInfo do
  @moduledoc """
  Information about device software.

  ## Attributes

  - androidBuildNumber (String): Android build Id string meant for displaying to the user, e.g. shamu-userdebug 6.0.1 MOB30I 2756745 dev-keys. Defaults to: `null`.
  - androidBuildTime (String): Build time. Defaults to: `null`.
  - androidVersion (String): The user visible Android version string, e.g. 6.0.1. Defaults to: `null`.
  - bootloaderVersion (String): The system bootloader version number, e.g. 0.6.7. Defaults to: `null`.
  - deviceKernelVersion (String): Kernel version, e.g. 2.6.32.9-g103d848. Defaults to: `null`.
  - securityPatchLevel (String): Security patch level, e.g. 2016-05-01. Defaults to: `null`.
  """

  defstruct [
    :"androidBuildNumber",
    :"androidBuildTime",
    :"androidVersion",
    :"bootloaderVersion",
    :"deviceKernelVersion",
    :"securityPatchLevel"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.SoftwareInfo do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.SoftwareInfo do
  def encode(value, options) do
    GoogleApi.AndroidManagement.V1.Deserializer.serialize_non_nil(value, options)
  end
end

