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

defmodule GoogleApi.Games.V1.Model.NetworkDiagnostics do
  @moduledoc """
  This is a JSON template for network diagnostics reported for a client.

  ## Attributes

  *   `androidNetworkSubtype` (*type:* `integer()`, *default:* `nil`) - The Android network subtype.
  *   `androidNetworkType` (*type:* `integer()`, *default:* `nil`) - The Android network type.
  *   `iosNetworkType` (*type:* `integer()`, *default:* `nil`) - iOS network type as defined in Reachability.h.
  *   `kind` (*type:* `String.t`, *default:* `games#networkDiagnostics`) - Uniquely identifies the type of this resource. Value is always the fixed string games#networkDiagnostics.
  *   `networkOperatorCode` (*type:* `String.t`, *default:* `nil`) - The MCC+MNC code for the client's network connection. On Android: http://developer.android.com/reference/android/telephony/TelephonyManager.html#getNetworkOperator() On iOS, see: https://developer.apple.com/library/ios/documentation/NetworkingInternet/Reference/CTCarrier/Reference/Reference.html
  *   `networkOperatorName` (*type:* `String.t`, *default:* `nil`) - The name of the carrier of the client's network connection. On Android: http://developer.android.com/reference/android/telephony/TelephonyManager.html#getNetworkOperatorName() On iOS: https://developer.apple.com/library/ios/documentation/NetworkingInternet/Reference/CTCarrier/Reference/Reference.html#//apple_ref/occ/instp/CTCarrier/carrierName
  *   `registrationLatencyMillis` (*type:* `integer()`, *default:* `nil`) - The amount of time in milliseconds it took for the client to establish a connection with the XMPP server.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidNetworkSubtype => integer(),
          :androidNetworkType => integer(),
          :iosNetworkType => integer(),
          :kind => String.t(),
          :networkOperatorCode => String.t(),
          :networkOperatorName => String.t(),
          :registrationLatencyMillis => integer()
        }

  field(:androidNetworkSubtype)
  field(:androidNetworkType)
  field(:iosNetworkType)
  field(:kind)
  field(:networkOperatorCode)
  field(:networkOperatorName)
  field(:registrationLatencyMillis)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.NetworkDiagnostics do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.NetworkDiagnostics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.NetworkDiagnostics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
