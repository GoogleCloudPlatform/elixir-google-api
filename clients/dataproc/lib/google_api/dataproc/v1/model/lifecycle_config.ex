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

defmodule GoogleApi.Dataproc.V1.Model.LifecycleConfig do
  @moduledoc """
  Specifies the cluster auto-delete schedule configuration.

  ## Attributes

  *   `autoDeleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The time when cluster will be auto-deleted (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  *   `autoDeleteTtl` (*type:* `String.t`, *default:* `nil`) - Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  *   `idleDeleteTtl` (*type:* `String.t`, *default:* `nil`) - Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  *   `idleStartTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when cluster became idle (most recent job finished) and became eligible for deletion due to idleness (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoDeleteTime => DateTime.t() | nil,
          :autoDeleteTtl => String.t() | nil,
          :idleDeleteTtl => String.t() | nil,
          :idleStartTime => DateTime.t() | nil
        }

  field(:autoDeleteTime, as: DateTime)
  field(:autoDeleteTtl)
  field(:idleDeleteTtl)
  field(:idleStartTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.LifecycleConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.LifecycleConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.LifecycleConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
