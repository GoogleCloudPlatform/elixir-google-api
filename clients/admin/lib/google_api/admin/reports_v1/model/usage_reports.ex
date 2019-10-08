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

defmodule GoogleApi.Admin.Reports_v1.Model.UsageReports do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `kind` (*type:* `String.t`, *default:* `admin#reports#usageReports`) - The type of API resource. For a usage report, the value is admin#reports#usageReports.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to specify next page. A report with multiple pages has a nextPageToken property in the response. For your follow-on requests getting all of the report's pages, enter the nextPageToken value in the pageToken query string.
  *   `usageReports` (*type:* `list(GoogleApi.Admin.Reports_v1.Model.UsageReport.t)`, *default:* `nil`) - Various application parameter records.
  *   `warnings` (*type:* `list(GoogleApi.Admin.Reports_v1.Model.UsageReportsWarnings.t)`, *default:* `nil`) - Warnings, if any.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :kind => String.t(),
          :nextPageToken => String.t(),
          :usageReports => list(GoogleApi.Admin.Reports_v1.Model.UsageReport.t()),
          :warnings => list(GoogleApi.Admin.Reports_v1.Model.UsageReportsWarnings.t())
        }

  field(:etag)
  field(:kind)
  field(:nextPageToken)
  field(:usageReports, as: GoogleApi.Admin.Reports_v1.Model.UsageReport, type: :list)
  field(:warnings, as: GoogleApi.Admin.Reports_v1.Model.UsageReportsWarnings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Reports_v1.Model.UsageReports do
  def decode(value, options) do
    GoogleApi.Admin.Reports_v1.Model.UsageReports.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Reports_v1.Model.UsageReports do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
