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

defmodule GoogleApi.Sheets.V4.Model.DataSourceRefreshSchedule do
  @moduledoc """
  The data source refresh schedule. All data sources in the spreadsheet are scheduled to refresh in a future time interval. The time interval size defaults to the one defined in the Sheets editor. For example, if a daily schedule at start time of 8am is scheduled, and the time interval is 4 hours, the scheduled refresh will happen between 8am and 12pm every day.

  ## Attributes

  *   `dailySchedule` (*type:* `GoogleApi.Sheets.V4.Model.DataSourceRefreshDailySchedule.t`, *default:* `nil`) - Daily refresh schedule.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - True if the refresh schedule is enabled, or false otherwise.
  *   `monthlySchedule` (*type:* `GoogleApi.Sheets.V4.Model.DataSourceRefreshMonthlySchedule.t`, *default:* `nil`) - Monthly refresh schedule.
  *   `nextRun` (*type:* `GoogleApi.Sheets.V4.Model.Interval.t`, *default:* `nil`) - Output only. The time interval of the next run.
  *   `refreshScope` (*type:* `String.t`, *default:* `nil`) - The scope of the refresh.
  *   `weeklySchedule` (*type:* `GoogleApi.Sheets.V4.Model.DataSourceRefreshWeeklySchedule.t`, *default:* `nil`) - Weekly refresh schedule.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dailySchedule => GoogleApi.Sheets.V4.Model.DataSourceRefreshDailySchedule.t(),
          :enabled => boolean(),
          :monthlySchedule => GoogleApi.Sheets.V4.Model.DataSourceRefreshMonthlySchedule.t(),
          :nextRun => GoogleApi.Sheets.V4.Model.Interval.t(),
          :refreshScope => String.t(),
          :weeklySchedule => GoogleApi.Sheets.V4.Model.DataSourceRefreshWeeklySchedule.t()
        }

  field(:dailySchedule, as: GoogleApi.Sheets.V4.Model.DataSourceRefreshDailySchedule)
  field(:enabled)
  field(:monthlySchedule, as: GoogleApi.Sheets.V4.Model.DataSourceRefreshMonthlySchedule)
  field(:nextRun, as: GoogleApi.Sheets.V4.Model.Interval)
  field(:refreshScope)
  field(:weeklySchedule, as: GoogleApi.Sheets.V4.Model.DataSourceRefreshWeeklySchedule)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.DataSourceRefreshSchedule do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.DataSourceRefreshSchedule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.DataSourceRefreshSchedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end