# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AnalyticsReporting.V4.Model.Cohort do
  @moduledoc """
  Defines a cohort. A cohort is a group of users who share a common characteristic. For example, all users with the same acquisition date belong to the same cohort.

  ## Attributes

  - dateRange (DateRange): This is used for &#x60;FIRST_VISIT_DATE&#x60; cohort, the cohort selects users whose first visit date is between start date and end date defined in the DateRange. The date ranges should be aligned for cohort requests. If the request contains &#x60;ga:cohortNthDay&#x60; it should be exactly one day long, if &#x60;ga:cohortNthWeek&#x60; it should be aligned to the week boundary (starting at Sunday and ending Saturday), and for &#x60;ga:cohortNthMonth&#x60; the date range should be aligned to the month (starting at the first and ending on the last day of the month). For LTV requests there are no such restrictions. You do not need to supply a date range for the &#x60;reportsRequest.dateRanges&#x60; field. Defaults to: `null`.
  - name (String.t): A unique name for the cohort. If not defined name will be auto-generated with values cohort_[1234...]. Defaults to: `null`.
  - type (String.t): Type of the cohort. The only supported type as of now is &#x60;FIRST_VISIT_DATE&#x60;. If this field is unspecified the cohort is treated as &#x60;FIRST_VISIT_DATE&#x60; type cohort. Defaults to: `null`.
    - Enum - one of [UNSPECIFIED_COHORT_TYPE, FIRST_VISIT_DATE]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dateRange => GoogleApi.AnalyticsReporting.V4.Model.DateRange.t(),
          :name => any(),
          :type => any()
        }

  field(:dateRange, as: GoogleApi.AnalyticsReporting.V4.Model.DateRange)
  field(:name)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.Cohort do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.Cohort.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.Cohort do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
