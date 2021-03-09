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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DateTime do
  @moduledoc """
  Message for a date time object. e.g. 2018-01-01, 5th August.

  ## Attributes

  *   `date` (*type:* `GoogleApi.DLP.V2.Model.GoogleTypeDate.t`, *default:* `nil`) - One or more of the following must be set. Must be a valid date or time value.
  *   `dayOfWeek` (*type:* `String.t`, *default:* `nil`) - Day of week
  *   `time` (*type:* `GoogleApi.DLP.V2.Model.GoogleTypeTimeOfDay.t`, *default:* `nil`) - Time of day
  *   `timeZone` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TimeZone.t`, *default:* `nil`) - Time zone
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :date => GoogleApi.DLP.V2.Model.GoogleTypeDate.t() | nil,
          :dayOfWeek => String.t() | nil,
          :time => GoogleApi.DLP.V2.Model.GoogleTypeTimeOfDay.t() | nil,
          :timeZone => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TimeZone.t() | nil
        }

  field(:date, as: GoogleApi.DLP.V2.Model.GoogleTypeDate)
  field(:dayOfWeek)
  field(:time, as: GoogleApi.DLP.V2.Model.GoogleTypeTimeOfDay)
  field(:timeZone, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TimeZone)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DateTime do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DateTime.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DateTime do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
