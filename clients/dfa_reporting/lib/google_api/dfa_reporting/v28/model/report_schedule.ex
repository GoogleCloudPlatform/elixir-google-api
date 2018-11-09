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

defmodule GoogleApi.DFAReporting.V28.Model.ReportSchedule do
  @moduledoc """
  The report&#39;s schedule. Can only be set if the report&#39;s &#39;dateRange&#39; is a relative date range and the relative date range is not \&quot;TODAY\&quot;.

  ## Attributes

  - active (boolean()): Whether the schedule is active or not. Must be set to either true or false. Defaults to: `null`.
  - every (integer()): Defines every how many days, weeks or months the report should be run. Needs to be set when \&quot;repeats\&quot; is either \&quot;DAILY\&quot;, \&quot;WEEKLY\&quot; or \&quot;MONTHLY\&quot;. Defaults to: `null`.
  - expirationDate (Date.t): The expiration date when the scheduled report stops running. Defaults to: `null`.
  - repeats (String.t): The interval for which the report is repeated. Note:   - \&quot;DAILY\&quot; also requires field \&quot;every\&quot; to be set.  - \&quot;WEEKLY\&quot; also requires fields \&quot;every\&quot; and \&quot;repeatsOnWeekDays\&quot; to be set.  - \&quot;MONTHLY\&quot; also requires fields \&quot;every\&quot; and \&quot;runsOnDayOfMonth\&quot; to be set. Defaults to: `null`.
  - repeatsOnWeekDays ([String.t]): List of week days \&quot;WEEKLY\&quot; on which scheduled reports should run. Defaults to: `null`.
    - Enum - one of 
  - runsOnDayOfMonth (String.t): Enum to define for \&quot;MONTHLY\&quot; scheduled reports whether reports should be repeated on the same day of the month as \&quot;startDate\&quot; or the same day of the week of the month. Example: If &#39;startDate&#39; is Monday, April 2nd 2012 (2012-04-02), \&quot;DAY_OF_MONTH\&quot; would run subsequent reports on the 2nd of every Month, and \&quot;WEEK_OF_MONTH\&quot; would run subsequent reports on the first Monday of the month. Defaults to: `null`.
    - Enum - one of [DAY_OF_MONTH, WEEK_OF_MONTH]
  - startDate (Date.t): Start date of date range for which scheduled reports should be run. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :active => any(),
          :every => any(),
          :expirationDate => Date.t(),
          :repeats => any(),
          :repeatsOnWeekDays => list(any()),
          :runsOnDayOfMonth => any(),
          :startDate => Date.t()
        }

  field(:active)
  field(:every)
  field(:expirationDate, as: Date)
  field(:repeats)
  field(:repeatsOnWeekDays, type: :list)
  field(:runsOnDayOfMonth)
  field(:startDate, as: Date)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.ReportSchedule do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.ReportSchedule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.ReportSchedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
