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

defmodule GoogleApi.BigQueryDataTransfer.V1.Model.DataSource do
  @moduledoc """
  Represents data source metadata. Metadata is sufficient to render UI and request proper OAuth tokens.

  ## Attributes

  *   `authorizationType` (*type:* `String.t`, *default:* `nil`) - Indicates the type of authorization.
  *   `clientId` (*type:* `String.t`, *default:* `nil`) - Data source client id which should be used to receive refresh token.
  *   `dataRefreshType` (*type:* `String.t`, *default:* `nil`) - Specifies whether the data source supports automatic data refresh for the past few days, and how it's supported. For some data sources, data might not be complete until a few days later, so it's useful to refresh data automatically.
  *   `dataSourceId` (*type:* `String.t`, *default:* `nil`) - Data source id.
  *   `defaultDataRefreshWindowDays` (*type:* `integer()`, *default:* `nil`) - Default data refresh window on days. Only meaningful when `data_refresh_type` = `SLIDING_WINDOW`.
  *   `defaultSchedule` (*type:* `String.t`, *default:* `nil`) - Default data transfer schedule. Examples of valid schedules include: `1st,3rd monday of month 15:30`, `every wed,fri of jan,jun 13:15`, and `first sunday of quarter 00:00`.
  *   `description` (*type:* `String.t`, *default:* `nil`) - User friendly data source description string.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User friendly data source name.
  *   `helpUrl` (*type:* `String.t`, *default:* `nil`) - Url for the help document for this data source.
  *   `manualRunsDisabled` (*type:* `boolean()`, *default:* `nil`) - Disables backfilling and manual run scheduling for the data source.
  *   `minimumScheduleInterval` (*type:* `String.t`, *default:* `nil`) - The minimum interval for scheduler to schedule runs.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Data source resource name.
  *   `parameters` (*type:* `list(GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter.t)`, *default:* `nil`) - Data source parameters.
  *   `scopes` (*type:* `list(String.t)`, *default:* `nil`) - Api auth scopes for which refresh token needs to be obtained. These are scopes needed by a data source to prepare data and ingest them into BigQuery, e.g., https://www.googleapis.com/auth/bigquery
  *   `supportsCustomSchedule` (*type:* `boolean()`, *default:* `nil`) - Specifies whether the data source supports a user defined schedule, or operates on the default schedule. When set to `true`, user can override default schedule.
  *   `supportsMultipleTransfers` (*type:* `boolean()`, *default:* `nil`) - Deprecated. This field has no effect.
  *   `transferType` (*type:* `String.t`, *default:* `nil`) - Deprecated. This field has no effect.
  *   `updateDeadlineSeconds` (*type:* `integer()`, *default:* `nil`) - The number of seconds to wait for an update from the data source before the Data Transfer Service marks the transfer as FAILED.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorizationType => String.t() | nil,
          :clientId => String.t() | nil,
          :dataRefreshType => String.t() | nil,
          :dataSourceId => String.t() | nil,
          :defaultDataRefreshWindowDays => integer() | nil,
          :defaultSchedule => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :helpUrl => String.t() | nil,
          :manualRunsDisabled => boolean() | nil,
          :minimumScheduleInterval => String.t() | nil,
          :name => String.t() | nil,
          :parameters =>
            list(GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter.t()) | nil,
          :scopes => list(String.t()) | nil,
          :supportsCustomSchedule => boolean() | nil,
          :supportsMultipleTransfers => boolean() | nil,
          :transferType => String.t() | nil,
          :updateDeadlineSeconds => integer() | nil
        }

  field(:authorizationType)
  field(:clientId)
  field(:dataRefreshType)
  field(:dataSourceId)
  field(:defaultDataRefreshWindowDays)
  field(:defaultSchedule)
  field(:description)
  field(:displayName)
  field(:helpUrl)
  field(:manualRunsDisabled)
  field(:minimumScheduleInterval)
  field(:name)
  field(:parameters, as: GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter, type: :list)
  field(:scopes, type: :list)
  field(:supportsCustomSchedule)
  field(:supportsMultipleTransfers)
  field(:transferType)
  field(:updateDeadlineSeconds)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.DataSource do
  def decode(value, options) do
    GoogleApi.BigQueryDataTransfer.V1.Model.DataSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.DataSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
