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

defmodule GoogleApi.YouTube.V3.Model.LiveBroadcastStatus do
  @moduledoc """


  ## Attributes

  *   `lifeCycleStatus` (*type:* `String.t`, *default:* `nil`) - The broadcast's status. The status can be updated using the API's liveBroadcasts.transition method.
  *   `liveBroadcastPriority` (*type:* `String.t`, *default:* `nil`) - Priority of the live broadcast event (internal state).
  *   `madeForKids` (*type:* `boolean()`, *default:* `nil`) - 
  *   `privacyStatus` (*type:* `String.t`, *default:* `nil`) - The broadcast's privacy status. Note that the broadcast represents exactly one YouTube video, so the privacy settings are identical to those supported for videos. In addition, you can set this field by modifying the broadcast resource or by setting the privacyStatus field of the corresponding video resource.
  *   `recordingStatus` (*type:* `String.t`, *default:* `nil`) - The broadcast's recording status.
  *   `selfDeclaredMadeForKids` (*type:* `boolean()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lifeCycleStatus => String.t(),
          :liveBroadcastPriority => String.t(),
          :madeForKids => boolean(),
          :privacyStatus => String.t(),
          :recordingStatus => String.t(),
          :selfDeclaredMadeForKids => boolean()
        }

  field(:lifeCycleStatus)
  field(:liveBroadcastPriority)
  field(:madeForKids)
  field(:privacyStatus)
  field(:recordingStatus)
  field(:selfDeclaredMadeForKids)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveBroadcastStatus do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveBroadcastStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveBroadcastStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
