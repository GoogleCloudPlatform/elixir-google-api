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

defmodule GoogleApi.CloudIot.V1.Model.BindDeviceToGatewayRequest do
  @moduledoc """
  Request for `BindDeviceToGateway`.

  ## Attributes

  *   `deviceId` (*type:* `String.t`, *default:* `nil`) - Required. The device to associate with the specified gateway. The value of
      `device_id` can be either the device numeric ID or the user-defined device
      identifier.
  *   `gatewayId` (*type:* `String.t`, *default:* `nil`) - Required. The value of `gateway_id` can be either the device numeric ID or the
      user-defined device identifier.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceId => String.t(),
          :gatewayId => String.t()
        }

  field(:deviceId)
  field(:gatewayId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.BindDeviceToGatewayRequest do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.BindDeviceToGatewayRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.BindDeviceToGatewayRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
