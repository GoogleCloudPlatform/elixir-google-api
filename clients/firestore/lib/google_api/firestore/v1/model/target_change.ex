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

defmodule GoogleApi.Firestore.V1.Model.TargetChange do
  @moduledoc """
  Targets being watched have changed.

  ## Attributes

  *   `cause` (*type:* `GoogleApi.Firestore.V1.Model.Status.t`, *default:* `nil`) - The error that resulted in this change, if applicable.
  *   `readTime` (*type:* `DateTime.t`, *default:* `nil`) - The consistent `read_time` for the given `target_ids` (omitted when the
      target_ids are not at a consistent snapshot).

      The stream is guaranteed to send a `read_time` with `target_ids` empty
      whenever the entire stream reaches a new consistent snapshot. ADD,
      CURRENT, and RESET messages are guaranteed to (eventually) result in a
      new consistent snapshot (while NO_CHANGE and REMOVE messages are not).

      For a given stream, `read_time` is guaranteed to be monotonically
      increasing.
  *   `resumeToken` (*type:* `String.t`, *default:* `nil`) - A token that can be used to resume the stream for the given `target_ids`,
      or all targets if `target_ids` is empty.

      Not set on every target change.
  *   `targetChangeType` (*type:* `String.t`, *default:* `nil`) - The type of change that occurred.
  *   `targetIds` (*type:* `list(integer())`, *default:* `nil`) - The target IDs of targets that have changed.

      If empty, the change applies to all targets.

      The order of the target IDs is not defined.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cause => GoogleApi.Firestore.V1.Model.Status.t(),
          :readTime => DateTime.t(),
          :resumeToken => String.t(),
          :targetChangeType => String.t(),
          :targetIds => list(integer())
        }

  field(:cause, as: GoogleApi.Firestore.V1.Model.Status)
  field(:readTime, as: DateTime)
  field(:resumeToken)
  field(:targetChangeType)
  field(:targetIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.TargetChange do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.TargetChange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.TargetChange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
