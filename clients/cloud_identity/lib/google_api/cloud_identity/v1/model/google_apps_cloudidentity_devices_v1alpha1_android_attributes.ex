# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1AndroidAttributes do
  @moduledoc """
  Resource representing the Android specific attributes of a Device.

  ## Attributes

  *   `basebandVersion` (*type:* `String.t`, *default:* `nil`) - Baseband version of Android device.
  *   `bootloaderVersion` (*type:* `String.t`, *default:* `nil`) - Device bootloader version. Example: 0.6.7.
  *   `buildNumber` (*type:* `String.t`, *default:* `nil`) - Build number of Android device.
  *   `enabledDeveloperOptions` (*type:* `boolean()`, *default:* `nil`) - Whether developer options is enabled on device.
  *   `enabledUnknownSources` (*type:* `boolean()`, *default:* `nil`) - Whether applications from unknown sources can be installed on device.
  *   `enabledUsbDebugging` (*type:* `boolean()`, *default:* `nil`) - Whether adb (USB debugging) is enabled on device.
  *   `encryptionState` (*type:* `String.t`, *default:* `nil`) - Device encryption state.
  *   `hardware` (*type:* `String.t`, *default:* `nil`) - Device hardware. Example: Sprout.
  *   `kernelVersion` (*type:* `String.t`, *default:* `nil`) - Kernel version of Android device.
  *   `otherAccounts` (*type:* `list(String.t)`, *default:* `nil`) - Domain name for Google accounts on device. Type for other accounts on
      device. Will only be populated if |ownership_privilege| is
      |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in
      to the device policy app if that account's domain has only one account.
      Examples: "com.example", "xyz.com".
  *   `ownerProfileAccount` (*type:* `boolean()`, *default:* `nil`) - Whether this account is on an owner/primary profile.
      For phones, only true for owner profiles. Android 4+ devices
      can have secondary or restricted user profiles.
  *   `ownershipPrivilege` (*type:* `String.t`, *default:* `nil`) - Ownership privileges on device.
  *   `securityPatchTime` (*type:* `DateTime.t`, *default:* `nil`) - OS security patch update time on device.
  *   `supportsWorkProfile` (*type:* `boolean()`, *default:* `nil`) - Whether device supports Android work profiles. If false, this service
      will not block access to corp data even if an administrator turns on the
      "Enforce Work Profile" policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basebandVersion => String.t(),
          :bootloaderVersion => String.t(),
          :buildNumber => String.t(),
          :enabledDeveloperOptions => boolean(),
          :enabledUnknownSources => boolean(),
          :enabledUsbDebugging => boolean(),
          :encryptionState => String.t(),
          :hardware => String.t(),
          :kernelVersion => String.t(),
          :otherAccounts => list(String.t()),
          :ownerProfileAccount => boolean(),
          :ownershipPrivilege => String.t(),
          :securityPatchTime => DateTime.t(),
          :supportsWorkProfile => boolean()
        }

  field(:basebandVersion)
  field(:bootloaderVersion)
  field(:buildNumber)
  field(:enabledDeveloperOptions)
  field(:enabledUnknownSources)
  field(:enabledUsbDebugging)
  field(:encryptionState)
  field(:hardware)
  field(:kernelVersion)
  field(:otherAccounts, type: :list)
  field(:ownerProfileAccount)
  field(:ownershipPrivilege)
  field(:securityPatchTime, as: DateTime)
  field(:supportsWorkProfile)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1AndroidAttributes do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1AndroidAttributes.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1AndroidAttributes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
