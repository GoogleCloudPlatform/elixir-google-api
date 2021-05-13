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

defmodule GoogleApi.Redis.V1beta1.Model.WeeklyMaintenanceWindow do
  @moduledoc """
  Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.

  ## Attributes

  *   `day` (*type:* `String.t`, *default:* `nil`) - Required. The day of week that maintenance updates occur.
  *   `duration` (*type:* `String.t`, *default:* `nil`) - Output only. Duration of the maintenance window. The current window is fixed at 3 hours.
  *   `startTime` (*type:* `GoogleApi.Redis.V1beta1.Model.TimeOfDay.t`, *default:* `nil`) - Required. Start time of the window in UTC time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :day => String.t() | nil,
          :duration => String.t() | nil,
          :startTime => GoogleApi.Redis.V1beta1.Model.TimeOfDay.t() | nil
        }

  field(:day)
  field(:duration)
  field(:startTime, as: GoogleApi.Redis.V1beta1.Model.TimeOfDay)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.WeeklyMaintenanceWindow do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.WeeklyMaintenanceWindow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.WeeklyMaintenanceWindow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
