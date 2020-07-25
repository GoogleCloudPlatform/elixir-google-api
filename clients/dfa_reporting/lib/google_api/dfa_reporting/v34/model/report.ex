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

defmodule GoogleApi.DFAReporting.V34.Model.Report do
  @moduledoc """
  Represents a Report resource.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - The account ID to which this report belongs.
  *   `criteria` (*type:* `GoogleApi.DFAReporting.V34.Model.ReportCriteria.t`, *default:* `nil`) - The report criteria for a report of type "STANDARD".
  *   `crossDimensionReachCriteria` (*type:* `GoogleApi.DFAReporting.V34.Model.ReportCrossDimensionReachCriteria.t`, *default:* `nil`) - The report criteria for a report of type "CROSS_DIMENSION_REACH".
  *   `delivery` (*type:* `GoogleApi.DFAReporting.V34.Model.ReportDelivery.t`, *default:* `nil`) - The report's email delivery settings.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - The eTag of this response for caching purposes.
  *   `fileName` (*type:* `String.t`, *default:* `nil`) - The filename used when generating report files for this report.
  *   `floodlightCriteria` (*type:* `GoogleApi.DFAReporting.V34.Model.ReportFloodlightCriteria.t`, *default:* `nil`) - The report criteria for a report of type "FLOODLIGHT".
  *   `format` (*type:* `String.t`, *default:* `nil`) - The output format of the report. If not specified, default format is "CSV". Note that the actual format in the completed report file might differ if for instance the report's size exceeds the format's capabilities. "CSV" will then be the fallback format.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The unique ID identifying this report resource.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#report`) - The kind of resource this is, in this case dfareporting#report.
  *   `lastModifiedTime` (*type:* `String.t`, *default:* `nil`) - The timestamp (in milliseconds since epoch) of when this report was last modified.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the report.
  *   `ownerProfileId` (*type:* `String.t`, *default:* `nil`) - The user profile id of the owner of this report.
  *   `pathAttributionCriteria` (*type:* `GoogleApi.DFAReporting.V34.Model.ReportPathAttributionCriteria.t`, *default:* `nil`) - The report criteria for a report of type "PATH_ATTRIBUTION".
  *   `pathCriteria` (*type:* `GoogleApi.DFAReporting.V34.Model.ReportPathCriteria.t`, *default:* `nil`) - The report criteria for a report of type "PATH".
  *   `pathToConversionCriteria` (*type:* `GoogleApi.DFAReporting.V34.Model.ReportPathToConversionCriteria.t`, *default:* `nil`) - The report criteria for a report of type "PATH_TO_CONVERSION".
  *   `reachCriteria` (*type:* `GoogleApi.DFAReporting.V34.Model.ReportReachCriteria.t`, *default:* `nil`) - The report criteria for a report of type "REACH".
  *   `schedule` (*type:* `GoogleApi.DFAReporting.V34.Model.ReportSchedule.t`, *default:* `nil`) - The report's schedule. Can only be set if the report's 'dateRange' is a relative date range and the relative date range is not "TODAY".
  *   `subAccountId` (*type:* `String.t`, *default:* `nil`) - The subaccount ID to which this report belongs if applicable.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the report.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :criteria => GoogleApi.DFAReporting.V34.Model.ReportCriteria.t(),
          :crossDimensionReachCriteria =>
            GoogleApi.DFAReporting.V34.Model.ReportCrossDimensionReachCriteria.t(),
          :delivery => GoogleApi.DFAReporting.V34.Model.ReportDelivery.t(),
          :etag => String.t(),
          :fileName => String.t(),
          :floodlightCriteria => GoogleApi.DFAReporting.V34.Model.ReportFloodlightCriteria.t(),
          :format => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :lastModifiedTime => String.t(),
          :name => String.t(),
          :ownerProfileId => String.t(),
          :pathAttributionCriteria =>
            GoogleApi.DFAReporting.V34.Model.ReportPathAttributionCriteria.t(),
          :pathCriteria => GoogleApi.DFAReporting.V34.Model.ReportPathCriteria.t(),
          :pathToConversionCriteria =>
            GoogleApi.DFAReporting.V34.Model.ReportPathToConversionCriteria.t(),
          :reachCriteria => GoogleApi.DFAReporting.V34.Model.ReportReachCriteria.t(),
          :schedule => GoogleApi.DFAReporting.V34.Model.ReportSchedule.t(),
          :subAccountId => String.t(),
          :type => String.t()
        }

  field(:accountId)
  field(:criteria, as: GoogleApi.DFAReporting.V34.Model.ReportCriteria)

  field(:crossDimensionReachCriteria,
    as: GoogleApi.DFAReporting.V34.Model.ReportCrossDimensionReachCriteria
  )

  field(:delivery, as: GoogleApi.DFAReporting.V34.Model.ReportDelivery)
  field(:etag)
  field(:fileName)
  field(:floodlightCriteria, as: GoogleApi.DFAReporting.V34.Model.ReportFloodlightCriteria)
  field(:format)
  field(:id)
  field(:kind)
  field(:lastModifiedTime)
  field(:name)
  field(:ownerProfileId)

  field(:pathAttributionCriteria,
    as: GoogleApi.DFAReporting.V34.Model.ReportPathAttributionCriteria
  )

  field(:pathCriteria, as: GoogleApi.DFAReporting.V34.Model.ReportPathCriteria)

  field(:pathToConversionCriteria,
    as: GoogleApi.DFAReporting.V34.Model.ReportPathToConversionCriteria
  )

  field(:reachCriteria, as: GoogleApi.DFAReporting.V34.Model.ReportReachCriteria)
  field(:schedule, as: GoogleApi.DFAReporting.V34.Model.ReportSchedule)
  field(:subAccountId)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.Report do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.Report.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.Report do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
