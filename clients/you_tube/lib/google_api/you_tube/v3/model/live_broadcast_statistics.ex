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

defmodule GoogleApi.YouTube.V3.Model.LiveBroadcastStatistics do
  @moduledoc """
  Statistics about the live broadcast. These represent a snapshot of the values at the time of the request. Statistics are only returned for live broadcasts.

  ## Attributes

  - concurrentViewers (String.t): The number of viewers currently watching the broadcast. The property and its value will be present if the broadcast has current viewers and the broadcast owner has not hidden the viewcount for the video. Note that YouTube stops tracking the number of concurrent viewers for a broadcast when the broadcast ends. So, this property would not identify the number of viewers watching an archived video of a live broadcast that already ended. Defaults to `nil`.
  - totalChatCount (String.t): The total number of live chat messages currently on the broadcast. The property and its value will be present if the broadcast is public, has the live chat feature enabled, and has at least one message. Note that this field will not be filled after the broadcast ends. So this property would not identify the number of chat messages for an archived video of a completed live broadcast. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :concurrentViewers => String.t(),
          :totalChatCount => String.t()
        }

  field(:concurrentViewers)
  field(:totalChatCount)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveBroadcastStatistics do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveBroadcastStatistics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveBroadcastStatistics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
