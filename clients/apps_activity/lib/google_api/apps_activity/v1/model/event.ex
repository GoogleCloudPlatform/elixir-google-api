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

defmodule GoogleApi.AppsActivity.V1.Model.Event do
  @moduledoc """
  Represents the changes associated with an action taken by a user.

  ## Attributes

  *   `additionalEventTypes` (*type:* `list(String.t)`, *default:* `nil`) - Additional event types. Some events may have multiple types when multiple actions are part of a single event. For example, creating a document, renaming it, and sharing it may be part of a single file-creation event.
  *   `eventTimeMillis` (*type:* `String.t`, *default:* `nil`) - The time at which the event occurred formatted as Unix time in milliseconds.
  *   `fromUserDeletion` (*type:* `boolean()`, *default:* `nil`) - Whether this event is caused by a user being deleted.
  *   `move` (*type:* `GoogleApi.AppsActivity.V1.Model.Move.t`, *default:* `nil`) - Extra information for move type events, such as changes in an object's parents.
  *   `permissionChanges` (*type:* `list(GoogleApi.AppsActivity.V1.Model.PermissionChange.t)`, *default:* `nil`) - Extra information for permissionChange type events, such as the user or group the new permission applies to.
  *   `primaryEventType` (*type:* `String.t`, *default:* `nil`) - The main type of event that occurred.
  *   `rename` (*type:* `GoogleApi.AppsActivity.V1.Model.Rename.t`, *default:* `nil`) - Extra information for rename type events, such as the old and new names.
  *   `target` (*type:* `GoogleApi.AppsActivity.V1.Model.Target.t`, *default:* `nil`) - Information specific to the Target object modified by the event.
  *   `user` (*type:* `GoogleApi.AppsActivity.V1.Model.User.t`, *default:* `nil`) - Represents the user responsible for the event.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalEventTypes => list(String.t()),
          :eventTimeMillis => String.t(),
          :fromUserDeletion => boolean(),
          :move => GoogleApi.AppsActivity.V1.Model.Move.t(),
          :permissionChanges => list(GoogleApi.AppsActivity.V1.Model.PermissionChange.t()),
          :primaryEventType => String.t(),
          :rename => GoogleApi.AppsActivity.V1.Model.Rename.t(),
          :target => GoogleApi.AppsActivity.V1.Model.Target.t(),
          :user => GoogleApi.AppsActivity.V1.Model.User.t()
        }

  field(:additionalEventTypes, type: :list)
  field(:eventTimeMillis)
  field(:fromUserDeletion)
  field(:move, as: GoogleApi.AppsActivity.V1.Model.Move)
  field(:permissionChanges, as: GoogleApi.AppsActivity.V1.Model.PermissionChange, type: :list)
  field(:primaryEventType)
  field(:rename, as: GoogleApi.AppsActivity.V1.Model.Rename)
  field(:target, as: GoogleApi.AppsActivity.V1.Model.Target)
  field(:user, as: GoogleApi.AppsActivity.V1.Model.User)
end

defimpl Poison.Decoder, for: GoogleApi.AppsActivity.V1.Model.Event do
  def decode(value, options) do
    GoogleApi.AppsActivity.V1.Model.Event.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppsActivity.V1.Model.Event do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
