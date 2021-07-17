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

defmodule GoogleApi.Content.V21.Model.RepricingProductReport do
  @moduledoc """
  Resource that represents a daily Repricing product report. Each report contains stats for a single type of Repricing rule for a single product on a given day. If there are multiple rules of the same type for the product on that day, the report lists all the rules by rule ids, combines the stats, and paginates the results by date. To retrieve the stats of a particular rule, provide the rule_id in the request.

  ## Attributes

  *   `applicationCount` (*type:* `String.t`, *default:* `nil`) - Total count of Repricer applications. This value captures how many times the rule of this type was applied to this product during this reporting period.
  *   `buyboxWinningProductStats` (*type:* `GoogleApi.Content.V21.Model.RepricingProductReportBuyboxWinningProductStats.t`, *default:* `nil`) - Stats specific to buybox winning rules for product report (deprecated).
  *   `date` (*type:* `GoogleApi.Content.V21.Model.Date.t`, *default:* `nil`) - Date of the stats in this report. The report starts and ends according to the merchant's timezone.
  *   `highWatermark` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - Maximum displayed price after repriced during this reporting period.
  *   `inapplicabilityDetails` (*type:* `list(GoogleApi.Content.V21.Model.InapplicabilityDetails.t)`, *default:* `nil`) - List of all reasons the rule did not apply to the product during the specified reporting period.
  *   `lowWatermark` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - Minimum displayed price after repriced during this reporting period.
  *   `orderItemCount` (*type:* `integer()`, *default:* `nil`) - Total unit count of impacted products ordered while the rule was active on the date of the report. This count includes all orders that were started while the rule was active, even if the rule was no longer active when the order was completed.
  *   `ruleIds` (*type:* `list(String.t)`, *default:* `nil`) - Ids of the Repricing rule for this report.
  *   `totalGmv` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - Total GMV generated by impacted products while the rule was active on the date of the report. This value includes all orders that were started while the rule was active, even if the rule was no longer active when the order was completed.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of the rule.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicationCount => String.t() | nil,
          :buyboxWinningProductStats =>
            GoogleApi.Content.V21.Model.RepricingProductReportBuyboxWinningProductStats.t() | nil,
          :date => GoogleApi.Content.V21.Model.Date.t() | nil,
          :highWatermark => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :inapplicabilityDetails =>
            list(GoogleApi.Content.V21.Model.InapplicabilityDetails.t()) | nil,
          :lowWatermark => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :orderItemCount => integer() | nil,
          :ruleIds => list(String.t()) | nil,
          :totalGmv => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :type => String.t() | nil
        }

  field(:applicationCount)

  field(:buyboxWinningProductStats,
    as: GoogleApi.Content.V21.Model.RepricingProductReportBuyboxWinningProductStats
  )

  field(:date, as: GoogleApi.Content.V21.Model.Date)
  field(:highWatermark, as: GoogleApi.Content.V21.Model.PriceAmount)

  field(:inapplicabilityDetails,
    as: GoogleApi.Content.V21.Model.InapplicabilityDetails,
    type: :list
  )

  field(:lowWatermark, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:orderItemCount)
  field(:ruleIds, type: :list)
  field(:totalGmv, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.RepricingProductReport do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.RepricingProductReport.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.RepricingProductReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
