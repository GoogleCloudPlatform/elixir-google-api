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

defmodule GoogleApi.YouTube.V3.Model.MonitorStreamInfo do
  @moduledoc """
  Settings and Info of the monitor stream

  ## Attributes

  - broadcastStreamDelayMs (integer()): If you have set the enableMonitorStream property to true, then this property determines the length of the live broadcast delay. Defaults to `nil`.
  - embedHtml (String.t): HTML code that embeds a player that plays the monitor stream. Defaults to `nil`.
  - enableMonitorStream (boolean()): This value determines whether the monitor stream is enabled for the broadcast. If the monitor stream is enabled, then YouTube will broadcast the event content on a special stream intended only for the broadcaster's consumption. The broadcaster can use the stream to review the event content and also to identify the optimal times to insert cuepoints.

  You need to set this value to true if you intend to have a broadcast delay for your event.

  Note: This property cannot be updated once the broadcast is in the testing or live state. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :broadcastStreamDelayMs => integer(),
          :embedHtml => String.t(),
          :enableMonitorStream => boolean()
        }

  field(:broadcastStreamDelayMs)
  field(:embedHtml)
  field(:enableMonitorStream)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.MonitorStreamInfo do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.MonitorStreamInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.MonitorStreamInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
