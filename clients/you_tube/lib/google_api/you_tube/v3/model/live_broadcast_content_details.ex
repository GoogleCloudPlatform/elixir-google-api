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

defmodule GoogleApi.YouTube.V3.Model.LiveBroadcastContentDetails do
  @moduledoc """
  Detailed settings of a broadcast.

  ## Attributes

  - boundStreamId (String.t): This value uniquely identifies the live stream bound to the broadcast. Defaults to `nil`.
  - boundStreamLastUpdateTimeMs (DateTime.t): The date and time that the live stream referenced by boundStreamId was last updated. Defaults to `nil`.
  - closedCaptionsType (String.t):  Defaults to `nil`.
  - enableAutoStart (boolean()): This setting indicates whether auto start is enabled for this broadcast. Defaults to `nil`.
  - enableClosedCaptions (boolean()): This setting indicates whether HTTP POST closed captioning is enabled for this broadcast. The ingestion URL of the closed captions is returned through the liveStreams API. This is mutually exclusive with using the closed_captions_type property, and is equivalent to setting closed_captions_type to CLOSED_CAPTIONS_HTTP_POST. Defaults to `nil`.
  - enableContentEncryption (boolean()): This setting indicates whether YouTube should enable content encryption for the broadcast. Defaults to `nil`.
  - enableDvr (boolean()): This setting determines whether viewers can access DVR controls while watching the video. DVR controls enable the viewer to control the video playback experience by pausing, rewinding, or fast forwarding content. The default value for this property is true.



  Important: You must set the value to true and also set the enableArchive property's value to true if you want to make playback available immediately after the broadcast ends. Defaults to `nil`.
  - enableEmbed (boolean()): This setting indicates whether the broadcast video can be played in an embedded player. If you choose to archive the video (using the enableArchive property), this setting will also apply to the archived video. Defaults to `nil`.
  - enableLowLatency (boolean()): Indicates whether this broadcast has low latency enabled. Defaults to `nil`.
  - latencyPreference (String.t): If both this and enable_low_latency are set, they must match. LATENCY_NORMAL should match enable_low_latency=false LATENCY_LOW should match enable_low_latency=true LATENCY_ULTRA_LOW should have enable_low_latency omitted. Defaults to `nil`.
  - mesh (String.t):  Defaults to `nil`.
  - monitorStream (GoogleApi.YouTube.V3.Model.MonitorStreamInfo.t): The monitorStream object contains information about the monitor stream, which the broadcaster can use to review the event content before the broadcast stream is shown publicly. Defaults to `nil`.
  - projection (String.t): The projection format of this broadcast. This defaults to rectangular. Defaults to `nil`.
  - recordFromStart (boolean()): Automatically start recording after the event goes live. The default value for this property is true.



  Important: You must also set the enableDvr property's value to true if you want the playback to be available immediately after the broadcast ends. If you set this property's value to true but do not also set the enableDvr property to true, there may be a delay of around one day before the archived video will be available for playback. Defaults to `nil`.
  - startWithSlate (boolean()): This setting indicates whether the broadcast should automatically begin with an in-stream slate when you update the broadcast's status to live. After updating the status, you then need to send a liveCuepoints.insert request that sets the cuepoint's eventState to end to remove the in-stream slate and make your broadcast stream visible to viewers. Defaults to `nil`.
  - stereoLayout (String.t):  Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundStreamId => String.t(),
          :boundStreamLastUpdateTimeMs => DateTime.t(),
          :closedCaptionsType => String.t(),
          :enableAutoStart => boolean(),
          :enableClosedCaptions => boolean(),
          :enableContentEncryption => boolean(),
          :enableDvr => boolean(),
          :enableEmbed => boolean(),
          :enableLowLatency => boolean(),
          :latencyPreference => String.t(),
          :mesh => String.t(),
          :monitorStream => GoogleApi.YouTube.V3.Model.MonitorStreamInfo.t(),
          :projection => String.t(),
          :recordFromStart => boolean(),
          :startWithSlate => boolean(),
          :stereoLayout => String.t()
        }

  field(:boundStreamId)
  field(:boundStreamLastUpdateTimeMs, as: DateTime)
  field(:closedCaptionsType)
  field(:enableAutoStart)
  field(:enableClosedCaptions)
  field(:enableContentEncryption)
  field(:enableDvr)
  field(:enableEmbed)
  field(:enableLowLatency)
  field(:latencyPreference)
  field(:mesh)
  field(:monitorStream, as: GoogleApi.YouTube.V3.Model.MonitorStreamInfo)
  field(:projection)
  field(:recordFromStart)
  field(:startWithSlate)
  field(:stereoLayout)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveBroadcastContentDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveBroadcastContentDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveBroadcastContentDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
