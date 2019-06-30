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

defmodule GoogleApi.DFAReporting.V33.Model.CreativeCustomEvent do
  @moduledoc """
  Creative Custom Event.

  ## Attributes

  *   `advertiserCustomEventId` (*type:* `String.t`, *default:* `nil`) - Unique ID of this event used by Reporting and Data Transfer. This is a read-only field.
  *   `advertiserCustomEventName` (*type:* `String.t`, *default:* `nil`) - User-entered name for the event.
  *   `advertiserCustomEventType` (*type:* `String.t`, *default:* `nil`) - Type of the event. This is a read-only field.
  *   `artworkLabel` (*type:* `String.t`, *default:* `nil`) - Artwork label column, used to link events in Campaign Manager back to events in Studio. This is a required field and should not be modified after insertion.
  *   `artworkType` (*type:* `String.t`, *default:* `nil`) - Artwork type used by the creative.This is a read-only field.
  *   `exitClickThroughUrl` (*type:* `GoogleApi.DFAReporting.V33.Model.CreativeClickThroughUrl.t`, *default:* `nil`) - Exit click-through URL for the event. This field is used only for exit events.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this event. This is a required field and should not be modified after insertion.
  *   `popupWindowProperties` (*type:* `GoogleApi.DFAReporting.V33.Model.PopupWindowProperties.t`, *default:* `nil`) - Properties for rich media popup windows. This field is used only for exit events.
  *   `targetType` (*type:* `String.t`, *default:* `nil`) - Target type used by the event.
  *   `videoReportingId` (*type:* `String.t`, *default:* `nil`) - Video reporting ID, used to differentiate multiple videos in a single creative. This is a read-only field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserCustomEventId => String.t(),
          :advertiserCustomEventName => String.t(),
          :advertiserCustomEventType => String.t(),
          :artworkLabel => String.t(),
          :artworkType => String.t(),
          :exitClickThroughUrl => GoogleApi.DFAReporting.V33.Model.CreativeClickThroughUrl.t(),
          :id => String.t(),
          :popupWindowProperties => GoogleApi.DFAReporting.V33.Model.PopupWindowProperties.t(),
          :targetType => String.t(),
          :videoReportingId => String.t()
        }

  field(:advertiserCustomEventId)
  field(:advertiserCustomEventName)
  field(:advertiserCustomEventType)
  field(:artworkLabel)
  field(:artworkType)
  field(:exitClickThroughUrl, as: GoogleApi.DFAReporting.V33.Model.CreativeClickThroughUrl)
  field(:id)
  field(:popupWindowProperties, as: GoogleApi.DFAReporting.V33.Model.PopupWindowProperties)
  field(:targetType)
  field(:videoReportingId)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.CreativeCustomEvent do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.CreativeCustomEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.CreativeCustomEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
