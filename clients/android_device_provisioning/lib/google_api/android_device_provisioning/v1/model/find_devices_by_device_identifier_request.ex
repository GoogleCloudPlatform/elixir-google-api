# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.FindDevicesByDeviceIdentifierRequest do
  @moduledoc """
  Request to find devices.

  ## Attributes

  *   `deviceIdentifier` (*type:* `GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier.t`, *default:* `nil`) - Required. The device identifier to search for.
  *   `limit` (*type:* `String.t`, *default:* `nil`) - Required. The maximum number of devices to show in a page of results. Must
      be between 1 and 100 inclusive.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A token specifying which result page to return.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceIdentifier => GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier.t(),
          :limit => String.t(),
          :pageToken => String.t()
        }

  field(:deviceIdentifier, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier)
  field(:limit)
  field(:pageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.AndroidDeviceProvisioning.V1.Model.FindDevicesByDeviceIdentifierRequest do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.FindDevicesByDeviceIdentifierRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AndroidDeviceProvisioning.V1.Model.FindDevicesByDeviceIdentifierRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
