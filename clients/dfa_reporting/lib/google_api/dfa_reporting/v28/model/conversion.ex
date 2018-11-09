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

defmodule GoogleApi.DFAReporting.V28.Model.Conversion do
  @moduledoc """
  A Conversion represents when a user successfully performs a desired action after seeing an ad.

  ## Attributes

  - childDirectedTreatment (boolean()): Whether the conversion was directed toward children. Defaults to: `null`.
  - customVariables ([CustomFloodlightVariable]): Custom floodlight variables. Defaults to: `null`.
  - encryptedUserId (String.t): The alphanumeric encrypted user ID. When set, encryptionInfo should also be specified. This field is mutually exclusive with encryptedUserIdCandidates[], mobileDeviceId and gclid. This or encryptedUserIdCandidates[] or mobileDeviceId or gclid is a required field. Defaults to: `null`.
  - encryptedUserIdCandidates ([String.t]): A list of the alphanumeric encrypted user IDs. Any user ID with exposure prior to the conversion timestamp will be used in the inserted conversion. If no such user ID is found then the conversion will be rejected with NO_COOKIE_MATCH_FOUND error. When set, encryptionInfo should also be specified. This field may only be used when calling batchinsert; it is not supported by batchupdate. This field is mutually exclusive with encryptedUserId, mobileDeviceId and gclid. This or encryptedUserId or mobileDeviceId or gclid is a required field. Defaults to: `null`.
  - floodlightActivityId (String.t): Floodlight Activity ID of this conversion. This is a required field. Defaults to: `null`.
  - floodlightConfigurationId (String.t): Floodlight Configuration ID of this conversion. This is a required field. Defaults to: `null`.
  - gclid (String.t): The Google click ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[] and mobileDeviceId. This or encryptedUserId or encryptedUserIdCandidates[] or mobileDeviceId is a required field. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#conversion\&quot;. Defaults to: `null`.
  - limitAdTracking (boolean()): Whether Limit Ad Tracking is enabled. When set to true, the conversion will be used for reporting but not targeting. This will prevent remarketing. Defaults to: `null`.
  - mobileDeviceId (String.t): The mobile device ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[] and gclid. This or encryptedUserId or encryptedUserIdCandidates[] or gclid is a required field. Defaults to: `null`.
  - ordinal (String.t): The ordinal of the conversion. Use this field to control how conversions of the same user and day are de-duplicated. This is a required field. Defaults to: `null`.
  - quantity (String.t): The quantity of the conversion. Defaults to: `null`.
  - timestampMicros (String.t): The timestamp of conversion, in Unix epoch micros. This is a required field. Defaults to: `null`.
  - value (float()): The value of the conversion. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :childDirectedTreatment => any(),
          :customVariables => list(GoogleApi.DFAReporting.V28.Model.CustomFloodlightVariable.t()),
          :encryptedUserId => any(),
          :encryptedUserIdCandidates => list(any()),
          :floodlightActivityId => any(),
          :floodlightConfigurationId => any(),
          :gclid => any(),
          :kind => any(),
          :limitAdTracking => any(),
          :mobileDeviceId => any(),
          :ordinal => any(),
          :quantity => any(),
          :timestampMicros => any(),
          :value => any()
        }

  field(:childDirectedTreatment)

  field(
    :customVariables,
    as: GoogleApi.DFAReporting.V28.Model.CustomFloodlightVariable,
    type: :list
  )

  field(:encryptedUserId)
  field(:encryptedUserIdCandidates, type: :list)
  field(:floodlightActivityId)
  field(:floodlightConfigurationId)
  field(:gclid)
  field(:kind)
  field(:limitAdTracking)
  field(:mobileDeviceId)
  field(:ordinal)
  field(:quantity)
  field(:timestampMicros)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.Conversion do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.Conversion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.Conversion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
