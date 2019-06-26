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

defmodule GoogleApi.ProximityBeacon.V1beta1.Model.GetInfoForObservedBeaconsResponse do
  @moduledoc """
  Information about the requested beacons, optionally including attachment
  data.

  ## Attributes

  *   `beacons` (*type:* `list(GoogleApi.ProximityBeacon.V1beta1.Model.BeaconInfo.t)`, *default:* `nil`) - Public information about beacons.
      May be empty if the request matched no beacons.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :beacons => list(GoogleApi.ProximityBeacon.V1beta1.Model.BeaconInfo.t())
        }

  field(:beacons, as: GoogleApi.ProximityBeacon.V1beta1.Model.BeaconInfo, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ProximityBeacon.V1beta1.Model.GetInfoForObservedBeaconsResponse do
  def decode(value, options) do
    GoogleApi.ProximityBeacon.V1beta1.Model.GetInfoForObservedBeaconsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ProximityBeacon.V1beta1.Model.GetInfoForObservedBeaconsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
