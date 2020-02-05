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

defmodule GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1Device do
  @moduledoc """
  Resource representing a Device.

  ## Attributes

  *   `androidSpecificAttributes` (*type:* `GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1AndroidAttributes.t`, *default:* `nil`) - Output only. Attributes specific to Android devices.
  *   `assetTag` (*type:* `String.t`, *default:* `nil`) - Asset tag of the device.
  *   `brand` (*type:* `String.t`, *default:* `nil`) - Output only. Device brand. Example: Samsung.
  *   `compromisedState` (*type:* `String.t`, *default:* `nil`) - Output only. Represents whether the Device is compromised.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. When the Company-Owned device was imported. This field is empty for BYOD
      devices.
  *   `deviceType` (*type:* `String.t`, *default:* `nil`) - Output only. Type of device.
  *   `imei` (*type:* `String.t`, *default:* `nil`) - Output only. IMEI number of device if GSM device; empty otherwise.
  *   `lastSyncTime` (*type:* `DateTime.t`, *default:* `nil`) - Most recent time when device synced with this service.
  *   `managementState` (*type:* `String.t`, *default:* `nil`) - Output only. Management state of the device
  *   `manufacturer` (*type:* `String.t`, *default:* `nil`) - Output only. Device manufacturer. Example: Motorola.
  *   `meid` (*type:* `String.t`, *default:* `nil`) - Output only. MEID number of device if CDMA device; empty otherwise.
  *   `model` (*type:* `String.t`, *default:* `nil`) - Output only. Model name of device. Example: Pixel 3.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. [Resource name](https://cloud.google.com/apis/design/resource_names)
      of the Device in format: `devices/{device_id}`, where device_id is
      the unique id assigned to the Device.
  *   `networkOperator` (*type:* `String.t`, *default:* `nil`) - Output only. Mobile or network operator of device, if available.
  *   `osVersion` (*type:* `String.t`, *default:* `nil`) - Output only. OS version of the device. Example: Android 8.1.0.
  *   `ownerType` (*type:* `String.t`, *default:* `nil`) - Whether the device is owned by the company or an individual
  *   `releaseVersion` (*type:* `String.t`, *default:* `nil`) - Output only. OS release version. Example: 6.0.
  *   `serialNumber` (*type:* `String.t`, *default:* `nil`) - Serial Number of device. Example: HT82V1A01076.
  *   `wifiMacAddresses` (*type:* `list(String.t)`, *default:* `nil`) - WiFi MAC addresses of device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidSpecificAttributes =>
            GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1AndroidAttributes.t(),
          :assetTag => String.t(),
          :brand => String.t(),
          :compromisedState => String.t(),
          :createTime => DateTime.t(),
          :deviceType => String.t(),
          :imei => String.t(),
          :lastSyncTime => DateTime.t(),
          :managementState => String.t(),
          :manufacturer => String.t(),
          :meid => String.t(),
          :model => String.t(),
          :name => String.t(),
          :networkOperator => String.t(),
          :osVersion => String.t(),
          :ownerType => String.t(),
          :releaseVersion => String.t(),
          :serialNumber => String.t(),
          :wifiMacAddresses => list(String.t())
        }

  field(:androidSpecificAttributes,
    as: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1AndroidAttributes
  )

  field(:assetTag)
  field(:brand)
  field(:compromisedState)
  field(:createTime, as: DateTime)
  field(:deviceType)
  field(:imei)
  field(:lastSyncTime, as: DateTime)
  field(:managementState)
  field(:manufacturer)
  field(:meid)
  field(:model)
  field(:name)
  field(:networkOperator)
  field(:osVersion)
  field(:ownerType)
  field(:releaseVersion)
  field(:serialNumber)
  field(:wifiMacAddresses, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1Device do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1Device.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1Device do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
