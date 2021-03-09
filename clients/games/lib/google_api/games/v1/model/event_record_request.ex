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

defmodule GoogleApi.Games.V1.Model.EventRecordRequest do
  @moduledoc """
  An event period update resource.

  ## Attributes

  *   `currentTimeMillis` (*type:* `String.t`, *default:* `nil`) - The current time when this update was sent, in milliseconds, since 1970 UTC (Unix Epoch).
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed string `games#eventRecordRequest`.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - The request ID used to identify this attempt to record events.
  *   `timePeriods` (*type:* `list(GoogleApi.Games.V1.Model.EventPeriodUpdate.t)`, *default:* `nil`) - A list of the time period updates being made in this request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentTimeMillis => String.t() | nil,
          :kind => String.t() | nil,
          :requestId => String.t() | nil,
          :timePeriods => list(GoogleApi.Games.V1.Model.EventPeriodUpdate.t()) | nil
        }

  field(:currentTimeMillis)
  field(:kind)
  field(:requestId)
  field(:timePeriods, as: GoogleApi.Games.V1.Model.EventPeriodUpdate, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.EventRecordRequest do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.EventRecordRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.EventRecordRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
