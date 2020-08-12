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

defmodule GoogleApi.HomeGraph.V1.Model.QueryResponse do
  @moduledoc """
  Response type for the [`Query`](#google.home.graph.v1.HomeGraphApiService.Query) call. This should follow the same format as the Google smart home `action.devices.QUERY` [response](https://developers.google.com/assistant/smarthome/reference/intent/query). # Example ```json { "requestId": "ff36a3cc-ec34-11e6-b1a0-64510650abcf", "payload": { "devices": { "123": { "on": true, "online": true }, "456": { "on": true, "online": true, "brightness": 80, "color": { "name": "cerulean", "spectrumRGB": 31655 } } } } } ```

  ## Attributes

  *   `payload` (*type:* `GoogleApi.HomeGraph.V1.Model.QueryResponsePayload.t`, *default:* `nil`) - Device states for the devices given in the request.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Request ID used for debugging. Copied from the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :payload => GoogleApi.HomeGraph.V1.Model.QueryResponsePayload.t(),
          :requestId => String.t()
        }

  field(:payload, as: GoogleApi.HomeGraph.V1.Model.QueryResponsePayload)
  field(:requestId)
end

defimpl Poison.Decoder, for: GoogleApi.HomeGraph.V1.Model.QueryResponse do
  def decode(value, options) do
    GoogleApi.HomeGraph.V1.Model.QueryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HomeGraph.V1.Model.QueryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
