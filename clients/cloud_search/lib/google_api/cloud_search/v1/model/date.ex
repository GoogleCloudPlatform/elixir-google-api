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

defmodule GoogleApi.CloudSearch.V1.Model.Date do
  @moduledoc """
  Represents a whole calendar date, for example a date of birth. The time of day and time zone are either specified elsewhere or are not significant. The date is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date between the year 1 and 9999.

  ## Attributes

  *   `day` (*type:* `integer()`, *default:* `nil`) - Day of month. Must be from 1 to 31 and valid for the year and month.
  *   `month` (*type:* `integer()`, *default:* `nil`) - Month of date. Must be from 1 to 12.
  *   `year` (*type:* `integer()`, *default:* `nil`) - Year of date. Must be from 1 to 9999.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :day => integer() | nil,
          :month => integer() | nil,
          :year => integer() | nil
        }

  field(:day)
  field(:month)
  field(:year)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.Date do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.Date.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.Date do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
