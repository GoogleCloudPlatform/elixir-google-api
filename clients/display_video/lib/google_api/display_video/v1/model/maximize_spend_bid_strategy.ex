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

defmodule GoogleApi.DisplayVideo.V1.Model.MaximizeSpendBidStrategy do
  @moduledoc """
  A strategy that automatically adjusts the bid to optimize a specified performance goal while spending the full budget.

  ## Attributes

  *   `customBiddingAlgorithmId` (*type:* `String.t`, *default:* `nil`) - The ID of the Custom Bidding Algorithm used by this strategy. Only applicable when performance_goal_type is set to `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`.
  *   `maxAverageCpmBidAmountMicros` (*type:* `String.t`, *default:* `nil`) - The maximum average CPM that may be bid, in micros of the advertiser's currency. Must be greater than or equal to a billable unit of the given currency. For example, 1500000 represents 1.5 standard units of the currency.
  *   `performanceGoalType` (*type:* `String.t`, *default:* `nil`) - Required. The type of the performance goal that the bidding strategy tries to minimize while spending the full budget. `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM` is not supported for this strategy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customBiddingAlgorithmId => String.t(),
          :maxAverageCpmBidAmountMicros => String.t(),
          :performanceGoalType => String.t()
        }

  field(:customBiddingAlgorithmId)
  field(:maxAverageCpmBidAmountMicros)
  field(:performanceGoalType)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.MaximizeSpendBidStrategy do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.MaximizeSpendBidStrategy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.MaximizeSpendBidStrategy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
