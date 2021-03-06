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

defmodule GoogleApi.YouTube.V3.Model.LiveBroadcastContentDetails do
  @moduledoc """
  Detailed settings of a broadcast.

  ## Attributes

  *   `boundStreamId` (*type:* `String.t`, *default:* `nil`) - This value uniquely identifies the live stream bound to the broadcast.
  *   `boundStreamLastUpdateTimeMs` (*type:* `DateTime.t`, *default:* `nil`) - The date and time that the live stream referenced by boundStreamId was last updated.
  *   `closedCaptionsType` (*type:* `String.t`, *default:* `nil`) - 
  *   `enableAutoStart` (*type:* `boolean()`, *default:* `nil`) - This setting indicates whether auto start is enabled for this broadcast. The default value for this property is false. This setting can only be used by Events.
  *   `enableAutoStop` (*type:* `boolean()`, *default:* `nil`) - This setting indicates whether auto stop is enabled for this broadcast. The default value for this property is false. This setting can only be used by Events.
  *   `enableClosedCaptions` (*type:* `boolean()`, *default:* `nil`) - This setting indicates whether HTTP POST closed captioning is enabled for this broadcast. The ingestion URL of the closed captions is returned through the liveStreams API. This is mutually exclusive with using the closed_captions_type property, and is equivalent to setting closed_captions_type to CLOSED_CAPTIONS_HTTP_POST.
  *   `enableContentEncryption` (*type:* `boolean()`, *default:* `nil`) - This setting indicates whether YouTube should enable content encryption for the broadcast.
  *   `enableDvr` (*type:* `boolean()`, *default:* `nil`) - This setting determines whether viewers can access DVR controls while watching the video. DVR controls enable the viewer to control the video playback experience by pausing, rewinding, or fast forwarding content. The default value for this property is true. *Important:* You must set the value to true and also set the enableArchive property's value to true if you want to make playback available immediately after the broadcast ends.
  *   `enableEmbed` (*type:* `boolean()`, *default:* `nil`) - This setting indicates whether the broadcast video can be played in an embedded player. If you choose to archive the video (using the enableArchive property), this setting will also apply to the archived video.
  *   `enableLowLatency` (*type:* `boolean()`, *default:* `nil`) - Indicates whether this broadcast has low latency enabled.
  *   `latencyPreference` (*type:* `String.t`, *default:* `nil`) - If both this and enable_low_latency are set, they must match. LATENCY_NORMAL should match enable_low_latency=false LATENCY_LOW should match enable_low_latency=true LATENCY_ULTRA_LOW should have enable_low_latency omitted.
  *   `mesh` (*type:* `String.t`, *default:* `nil`) - The mesh for projecting the video if projection is mesh. The mesh value must be a UTF-8 string containing the base-64 encoding of 3D mesh data that follows the Spherical Video V2 RFC specification for an mshp box, excluding the box size and type but including the following four reserved zero bytes for the version and flags.
  *   `monitorStream` (*type:* `GoogleApi.YouTube.V3.Model.MonitorStreamInfo.t`, *default:* `nil`) - The monitorStream object contains information about the monitor stream, which the broadcaster can use to review the event content before the broadcast stream is shown publicly.
  *   `projection` (*type:* `String.t`, *default:* `nil`) - The projection format of this broadcast. This defaults to rectangular.
  *   `recordFromStart` (*type:* `boolean()`, *default:* `nil`) - Automatically start recording after the event goes live. The default value for this property is true. *Important:* You must also set the enableDvr property's value to true if you want the playback to be available immediately after the broadcast ends. If you set this property's value to true but do not also set the enableDvr property to true, there may be a delay of around one day before the archived video will be available for playback.
  *   `startWithSlate` (*type:* `boolean()`, *default:* `nil`) - This setting indicates whether the broadcast should automatically begin with an in-stream slate when you update the broadcast's status to live. After updating the status, you then need to send a liveCuepoints.insert request that sets the cuepoint's eventState to end to remove the in-stream slate and make your broadcast stream visible to viewers.
  *   `stereoLayout` (*type:* `String.t`, *default:* `nil`) - The 3D stereo layout of this broadcast. This defaults to mono.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundStreamId => String.t() | nil,
          :boundStreamLastUpdateTimeMs => DateTime.t() | nil,
          :closedCaptionsType => String.t() | nil,
          :enableAutoStart => boolean() | nil,
          :enableAutoStop => boolean() | nil,
          :enableClosedCaptions => boolean() | nil,
          :enableContentEncryption => boolean() | nil,
          :enableDvr => boolean() | nil,
          :enableEmbed => boolean() | nil,
          :enableLowLatency => boolean() | nil,
          :latencyPreference => String.t() | nil,
          :mesh => String.t() | nil,
          :monitorStream => GoogleApi.YouTube.V3.Model.MonitorStreamInfo.t() | nil,
          :projection => String.t() | nil,
          :recordFromStart => boolean() | nil,
          :startWithSlate => boolean() | nil,
          :stereoLayout => String.t() | nil
        }

  field(:boundStreamId)
  field(:boundStreamLastUpdateTimeMs, as: DateTime)
  field(:closedCaptionsType)
  field(:enableAutoStart)
  field(:enableAutoStop)
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
