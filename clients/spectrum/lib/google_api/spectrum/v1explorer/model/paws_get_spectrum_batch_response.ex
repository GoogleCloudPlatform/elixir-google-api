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

defmodule GoogleApi.Spectrum.V1explorer.Model.PawsGetSpectrumBatchResponse do
  @moduledoc """
  The response message for the batch available spectrum query contains a schedule of available spectrum for the device at multiple locations.

  ## Attributes

  - databaseChange (DbUpdateSpec): A database may include the databaseChange parameter to notify a device of a change to its database URI, providing one or more alternate database URIs. The device should use this information to update its list of pre-configured databases by (only) replacing its entry for the responding database with the list of alternate URIs. Defaults to: `null`.
  - deviceDesc (DeviceDescriptor): The database must return in its available spectrum response the device descriptor information it received in the master device&#39;s available spectrum batch request. Defaults to: `null`.
  - geoSpectrumSchedules (List[GeoSpectrumSchedule]): The available spectrum batch response must contain a geo-spectrum schedule list, The list may be empty if spectrum is not available. The database may return more than one geo-spectrum schedule to represent future changes to the available spectrum. How far in advance a schedule may be provided depends upon the applicable regulatory domain. The database may return available spectrum for fewer geolocations than requested. The device must not make assumptions about the order of the entries in the list, and must use the geolocation value in each geo-spectrum schedule entry to match available spectrum to a location. Defaults to: `null`.
  - kind (String): Identifies what kind of resource this is. Value: the fixed string \&quot;spectrum#pawsGetSpectrumBatchResponse\&quot;. Defaults to: `null`.
  - maxContiguousBwHz (Float): The database may return a constraint on the allowed maximum contiguous bandwidth (in Hertz). A regulatory domain may require the database to return this parameter. When this parameter is present in the response, the device must apply this constraint to its spectrum-selection logic to ensure that no single block of spectrum has bandwidth that exceeds this value. Defaults to: `null`.
  - maxTotalBwHz (Float): The database may return a constraint on the allowed maximum total bandwidth (in Hertz), which does not need to be contiguous. A regulatory domain may require the database to return this parameter. When this parameter is present in the available spectrum batch response, the device must apply this constraint to its spectrum-selection logic to ensure that total bandwidth does not exceed this value. Defaults to: `null`.
  - needsSpectrumReport (Boolean): For regulatory domains that require a spectrum-usage report from devices, the database must return true for this parameter if the geo-spectrum schedules list is not empty; otherwise, the database should either return false or omit this parameter. If this parameter is present and its value is true, the device must send a spectrum use notify message to the database; otherwise, the device should not send the notification. Defaults to: `null`.
  - rulesetInfo (RulesetInfo): The database should return ruleset information, which identifies the applicable regulatory authority and ruleset for the available spectrum batch response. If included, the device must use the corresponding ruleset to interpret the response. Values provided in the returned ruleset information, such as maxLocationChange, take precedence over any conflicting values provided in the ruleset information returned in a prior initialization response sent by the database to the device. Defaults to: `null`.
  - timestamp (String): The database includes a timestamp of the form, YYYY-MM-DDThh:mm:ssZ (Internet timestamp format per RFC3339), in its available spectrum batch response. The timestamp should be used by the device as a reference for the start and stop times specified in the response spectrum schedules. Defaults to: `null`.
  - type (String): The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).  Required field. Defaults to: `null`.
  - version (String): The PAWS version. Must be exactly 1.0.  Required field. Defaults to: `null`.
  """

  defstruct [
    :"databaseChange",
    :"deviceDesc",
    :"geoSpectrumSchedules",
    :"kind",
    :"maxContiguousBwHz",
    :"maxTotalBwHz",
    :"needsSpectrumReport",
    :"rulesetInfo",
    :"timestamp",
    :"type",
    :"version"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spectrum.V1explorer.Model.PawsGetSpectrumBatchResponse do
  import GoogleApi.Spectrum.V1explorer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"databaseChange", :struct, GoogleApi.Spectrum.V1explorer.Model.DbUpdateSpec, options)
    |> deserialize(:"deviceDesc", :struct, GoogleApi.Spectrum.V1explorer.Model.DeviceDescriptor, options)
    |> deserialize(:"geoSpectrumSchedules", :list, GoogleApi.Spectrum.V1explorer.Model.GeoSpectrumSchedule, options)
    |> deserialize(:"rulesetInfo", :struct, GoogleApi.Spectrum.V1explorer.Model.RulesetInfo, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spectrum.V1explorer.Model.PawsGetSpectrumBatchResponse do
  def encode(value, options) do
    GoogleApi.Spectrum.V1explorer.Deserializer.serialize_non_nil(value, options)
  end
end

