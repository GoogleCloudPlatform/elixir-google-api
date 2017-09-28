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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier do
  @moduledoc """
  DeviceIdentifiers identifies an unique device.

  ## Attributes

  - imei (String): IMEI Defaults to: `null`.
  - manufacturer (String): Manufacturer name to match &#x60;android.os.Build.MANUFACTURER&#x60; (required). Allowed values listed in [manufacturer names](/zero-touch/resources/manufacturer-names). Defaults to: `null`.
  - meid (String): MEID Defaults to: `null`.
  - serialNumber (String): Serial number (optional) Defaults to: `null`.
  """

  defstruct [
    :"imei",
    :"manufacturer",
    :"meid",
    :"serialNumber"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier do
  def encode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Deserializer.serialize_non_nil(value, options)
  end
end

