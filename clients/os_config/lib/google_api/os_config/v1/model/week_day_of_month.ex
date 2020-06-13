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

defmodule GoogleApi.OSConfig.V1.Model.WeekDayOfMonth do
  @moduledoc """
  Represents one week day in a month. An example is "the 4th Sunday".

  ## Attributes

  *   `dayOfWeek` (*type:* `String.t`, *default:* `nil`) - Required. A day of the week.
  *   `weekOrdinal` (*type:* `integer()`, *default:* `nil`) - Required. Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1
      indicates the last week of the month.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dayOfWeek => String.t(),
          :weekOrdinal => integer()
        }

  field(:dayOfWeek)
  field(:weekOrdinal)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.WeekDayOfMonth do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.WeekDayOfMonth.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.WeekDayOfMonth do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
