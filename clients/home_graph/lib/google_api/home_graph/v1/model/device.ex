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

defmodule GoogleApi.HomeGraph.V1.Model.Device do
  @moduledoc """
  Third-party device definition. Next ID = 14

  ## Attributes

  *   `attributes` (*type:* `map()`, *default:* `nil`) - Attributes for the traits supported by the device.
  *   `customData` (*type:* `map()`, *default:* `nil`) - Custom device attributes stored in Home Graph and provided to your smart home Action in each [QUERY](https://developers.google.com/assistant/smarthome/reference/intent/query) and [EXECUTE](https://developers.google.com/assistant/smarthome/reference/intent/execute) intent. Data in this object has a few constraints: No sensitive information, including but not limited to Personally Identifiable Information.
  *   `deviceInfo` (*type:* `GoogleApi.HomeGraph.V1.Model.DeviceInfo.t`, *default:* `nil`) - Device manufacturer, model, hardware version, and software version.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Third-party device ID.
  *   `name` (*type:* `GoogleApi.HomeGraph.V1.Model.DeviceNames.t`, *default:* `nil`) - Names given to this device by your smart home Action.
  *   `nonLocalTraits` (*type:* `list(GoogleApi.HomeGraph.V1.Model.NonLocalTrait.t)`, *default:* `nil`) - See description for "traits". For Smart Home Entertainment Devices (SHED) devices, some traits can only be executed on 3P cloud, e.g. "non_local_traits": [ { "trait": "action.devices.traits.MediaInitiation" }, { "trait": "action.devices.traits.Channel" } ] go/shed-per-trait-routing.
  *   `notificationSupportedByAgent` (*type:* `boolean()`, *default:* `nil`) - Indicates whether your smart home Action will report notifications to Google for this device via ReportStateAndNotification. If your smart home Action enables users to control device notifications, you should update this field and call RequestSyncDevices.
  *   `otherDeviceIds` (*type:* `list(GoogleApi.HomeGraph.V1.Model.AgentOtherDeviceId.t)`, *default:* `nil`) - Alternate IDs associated with this device. This is used to identify cloud synced devices enabled for [local fulfillment](https://developers.google.com/assistant/smarthome/concepts/local).
  *   `roomHint` (*type:* `String.t`, *default:* `nil`) - Suggested name for the room where this device is installed. Google attempts to use this value during user setup.
  *   `structureHint` (*type:* `String.t`, *default:* `nil`) - Suggested name for the structure where this device is installed. Google attempts to use this value during user setup.
  *   `traits` (*type:* `list(String.t)`, *default:* `nil`) - Traits supported by the device. See [device traits](https://developers.google.com/assistant/smarthome/traits).
  *   `type` (*type:* `String.t`, *default:* `nil`) - Hardware type of the device. See [device types](https://developers.google.com/assistant/smarthome/guides).
  *   `willReportState` (*type:* `boolean()`, *default:* `nil`) - Indicates whether your smart home Action will report state of this device to Google via ReportStateAndNotification.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes => map() | nil,
          :customData => map() | nil,
          :deviceInfo => GoogleApi.HomeGraph.V1.Model.DeviceInfo.t() | nil,
          :id => String.t() | nil,
          :name => GoogleApi.HomeGraph.V1.Model.DeviceNames.t() | nil,
          :nonLocalTraits => list(GoogleApi.HomeGraph.V1.Model.NonLocalTrait.t()) | nil,
          :notificationSupportedByAgent => boolean() | nil,
          :otherDeviceIds => list(GoogleApi.HomeGraph.V1.Model.AgentOtherDeviceId.t()) | nil,
          :roomHint => String.t() | nil,
          :structureHint => String.t() | nil,
          :traits => list(String.t()) | nil,
          :type => String.t() | nil,
          :willReportState => boolean() | nil
        }

  field(:attributes, type: :map)
  field(:customData, type: :map)
  field(:deviceInfo, as: GoogleApi.HomeGraph.V1.Model.DeviceInfo)
  field(:id)
  field(:name, as: GoogleApi.HomeGraph.V1.Model.DeviceNames)
  field(:nonLocalTraits, as: GoogleApi.HomeGraph.V1.Model.NonLocalTrait, type: :list)
  field(:notificationSupportedByAgent)
  field(:otherDeviceIds, as: GoogleApi.HomeGraph.V1.Model.AgentOtherDeviceId, type: :list)
  field(:roomHint)
  field(:structureHint)
  field(:traits, type: :list)
  field(:type)
  field(:willReportState)
end

defimpl Poison.Decoder, for: GoogleApi.HomeGraph.V1.Model.Device do
  def decode(value, options) do
    GoogleApi.HomeGraph.V1.Model.Device.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HomeGraph.V1.Model.Device do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
