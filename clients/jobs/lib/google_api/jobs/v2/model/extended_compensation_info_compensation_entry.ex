# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationEntry do
  @moduledoc """
  Deprecated. See CompensationInfo.

  A compensation entry that represents one component of compensation, such
  as base pay, bonus, or other compensation type.

  Annualization: One compensation entry can be annualized if
  - it contains valid amount or range.
  - and its expected_units_per_year is set or can be derived.
  Its annualized range is determined as (amount or range) times
  expected_units_per_year.

  ## Attributes

  *   `amount` (*type:* `GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal.t`, *default:* `nil`) - Optional.

      Monetary amount.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional.

      Compensation description.
  *   `expectedUnitsPerYear` (*type:* `GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal.t`, *default:* `nil`) - Optional.

      Expected number of units paid each year. If not specified, when
      Job.employment_types is FULLTIME, a default value is inferred
      based on unit. Default values:
      - HOURLY: 2080
      - DAILY: 260
      - WEEKLY: 52
      - MONTHLY: 12
      - ANNUAL: 1
  *   `range` (*type:* `GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange.t`, *default:* `nil`) - Optional.

      Compensation range.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required.

      Compensation type.
  *   `unit` (*type:* `String.t`, *default:* `nil`) - Optional.

      Frequency of the specified amount.

      Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  *   `unspecified` (*type:* `boolean()`, *default:* `nil`) - Optional.

      Indicates compensation amount and range are unset.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amount => GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal.t(),
          :description => String.t(),
          :expectedUnitsPerYear => GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal.t(),
          :range => GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange.t(),
          :type => String.t(),
          :unit => String.t(),
          :unspecified => boolean()
        }

  field(:amount, as: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal)
  field(:description)
  field(:expectedUnitsPerYear, as: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal)
  field(:range, as: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange)
  field(:type)
  field(:unit)
  field(:unspecified)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationEntry do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
