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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1CustomReport do
  @moduledoc """


  ## Attributes

  *   `chartType` (*type:* `String.t`, *default:* `nil`) - This field contains the chart type for the report
  *   `comments` (*type:* `list(String.t)`, *default:* `nil`) - Legacy field: not used. This field contains a list of comments associated with custom report
  *   `createdAt` (*type:* `String.t`, *default:* `nil`) - Output only. Unix time when the app was created json key: createdAt
  *   `dimensions` (*type:* `list(String.t)`, *default:* `nil`) - This contains the list of dimensions for the report
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - This is the display name for the report
  *   `environment` (*type:* `String.t`, *default:* `nil`) - Output only. Environment name
  *   `filter` (*type:* `String.t`, *default:* `nil`) - This field contains the filter expression
  *   `fromTime` (*type:* `String.t`, *default:* `nil`) - Legacy field: not used. Contains the from time for the report
  *   `lastModifiedAt` (*type:* `String.t`, *default:* `nil`) - Output only. Modified time of this entity as milliseconds since epoch. json key: lastModifiedAt
  *   `lastViewedAt` (*type:* `String.t`, *default:* `nil`) - Output only. Last viewed time of this entity as milliseconds since epoch
  *   `limit` (*type:* `String.t`, *default:* `nil`) - Legacy field: not used This field contains the limit for the result retrieved
  *   `metrics` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1CustomReportMetric.t)`, *default:* `nil`) - Required. This contains the list of metrics
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Unique identifier for the report T his is a legacy field used to encode custom report unique id
  *   `offset` (*type:* `String.t`, *default:* `nil`) - Legacy field: not used. This field contains the offset for the data
  *   `organization` (*type:* `String.t`, *default:* `nil`) - Output only. Organization name
  *   `properties` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ReportProperty.t)`, *default:* `nil`) - This field contains report properties such as ui metadata etc.
  *   `sortByCols` (*type:* `list(String.t)`, *default:* `nil`) - Legacy field: not used much. Contains the list of sort by columns
  *   `sortOrder` (*type:* `String.t`, *default:* `nil`) - Legacy field: not used much. Contains the sort order for the sort columns
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - Legacy field: not used. This field contains a list of tags associated with custom report
  *   `timeUnit` (*type:* `String.t`, *default:* `nil`) - This field contains the time unit of aggregation for the report
  *   `toTime` (*type:* `String.t`, *default:* `nil`) - Legacy field: not used. Contains the end time for the report
  *   `topk` (*type:* `String.t`, *default:* `nil`) - Legacy field: not used. This field contains the top k parameter value for restricting the result
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chartType => String.t() | nil,
          :comments => list(String.t()) | nil,
          :createdAt => String.t() | nil,
          :dimensions => list(String.t()) | nil,
          :displayName => String.t() | nil,
          :environment => String.t() | nil,
          :filter => String.t() | nil,
          :fromTime => String.t() | nil,
          :lastModifiedAt => String.t() | nil,
          :lastViewedAt => String.t() | nil,
          :limit => String.t() | nil,
          :metrics =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1CustomReportMetric.t()) | nil,
          :name => String.t() | nil,
          :offset => String.t() | nil,
          :organization => String.t() | nil,
          :properties =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ReportProperty.t()) | nil,
          :sortByCols => list(String.t()) | nil,
          :sortOrder => String.t() | nil,
          :tags => list(String.t()) | nil,
          :timeUnit => String.t() | nil,
          :toTime => String.t() | nil,
          :topk => String.t() | nil
        }

  field(:chartType)
  field(:comments, type: :list)
  field(:createdAt)
  field(:dimensions, type: :list)
  field(:displayName)
  field(:environment)
  field(:filter)
  field(:fromTime)
  field(:lastModifiedAt)
  field(:lastViewedAt)
  field(:limit)

  field(:metrics, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1CustomReportMetric, type: :list)

  field(:name)
  field(:offset)
  field(:organization)
  field(:properties, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ReportProperty, type: :list)
  field(:sortByCols, type: :list)
  field(:sortOrder)
  field(:tags, type: :list)
  field(:timeUnit)
  field(:toTime)
  field(:topk)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1CustomReport do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1CustomReport.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1CustomReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
