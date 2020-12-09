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

defmodule GoogleApi.Testing.V1.Model.IosModel do
  @moduledoc """
  A description of an iOS device tests may be run on.

  ## Attributes

  *   `deviceCapabilities` (*type:* `list(String.t)`, *default:* `nil`) - Device capabilities. Copied from https://developer.apple.com/library/archive/documentation/DeviceInformation/Reference/iOSDeviceCompatibility/DeviceCompatibilityMatrix/DeviceCompatibilityMatrix.html
  *   `formFactor` (*type:* `String.t`, *default:* `nil`) - Whether this device is a phone, tablet, wearable, etc.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The unique opaque id for this model. Use this for invoking the TestExecutionService.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The human-readable name for this device model. Examples: "iPhone 4s", "iPad Mini 2".
  *   `screenDensity` (*type:* `integer()`, *default:* `nil`) - Screen density in DPI.
  *   `screenX` (*type:* `integer()`, *default:* `nil`) - Screen size in the horizontal (X) dimension measured in pixels.
  *   `screenY` (*type:* `integer()`, *default:* `nil`) - Screen size in the vertical (Y) dimension measured in pixels.
  *   `supportedVersionIds` (*type:* `list(String.t)`, *default:* `nil`) - The set of iOS major software versions this device supports.
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - Tags for this dimension. Examples: "default", "preview", "deprecated".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceCapabilities => list(String.t()),
          :formFactor => String.t(),
          :id => String.t(),
          :name => String.t(),
          :screenDensity => integer(),
          :screenX => integer(),
          :screenY => integer(),
          :supportedVersionIds => list(String.t()),
          :tags => list(String.t())
        }

  field(:deviceCapabilities, type: :list)
  field(:formFactor)
  field(:id)
  field(:name)
  field(:screenDensity)
  field(:screenX)
  field(:screenY)
  field(:supportedVersionIds, type: :list)
  field(:tags, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.IosModel do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.IosModel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.IosModel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
