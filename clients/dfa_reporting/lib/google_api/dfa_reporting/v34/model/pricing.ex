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

defmodule GoogleApi.DFAReporting.V34.Model.Pricing do
  @moduledoc """
  Pricing Information

  ## Attributes

  *   `capCostType` (*type:* `String.t`, *default:* `nil`) - Cap cost type of this inventory item.
  *   `endDate` (*type:* `Date.t`, *default:* `nil`) - End date of this inventory item.
  *   `flights` (*type:* `list(GoogleApi.DFAReporting.V34.Model.Flight.t)`, *default:* `nil`) - Flights of this inventory item. A flight (a.k.a. pricing period) represents the inventory item pricing information for a specific period of time.
  *   `groupType` (*type:* `String.t`, *default:* `nil`) - Group type of this inventory item if it represents a placement group. Is null otherwise. There are two type of placement groups: PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE is a simple group of inventory items that acts as a single pricing point for a group of tags. PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK is a group of inventory items that not only acts as a single pricing point, but also assumes that all the tags in it will be served at the same time. A roadblock requires one of its assigned inventory items to be marked as primary.
  *   `pricingType` (*type:* `String.t`, *default:* `nil`) - Pricing type of this inventory item.
  *   `startDate` (*type:* `Date.t`, *default:* `nil`) - Start date of this inventory item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :capCostType => String.t(),
          :endDate => Date.t(),
          :flights => list(GoogleApi.DFAReporting.V34.Model.Flight.t()),
          :groupType => String.t(),
          :pricingType => String.t(),
          :startDate => Date.t()
        }

  field(:capCostType)
  field(:endDate, as: Date)
  field(:flights, as: GoogleApi.DFAReporting.V34.Model.Flight, type: :list)
  field(:groupType)
  field(:pricingType)
  field(:startDate, as: Date)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.Pricing do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.Pricing.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.Pricing do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
