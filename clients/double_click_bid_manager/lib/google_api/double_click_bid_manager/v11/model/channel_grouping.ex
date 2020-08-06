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

defmodule GoogleApi.DoubleClickBidManager.V11.Model.ChannelGrouping do
  @moduledoc """
  A channel grouping defines a set of rules that can be used to categorize
  events in a path report.

  ## Attributes

  *   `fallbackName` (*type:* `String.t`, *default:* `nil`) - The name to apply to an event that does not match any of the rules in the
      channel grouping.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Channel Grouping name.
  *   `rules` (*type:* `list(GoogleApi.DoubleClickBidManager.V11.Model.Rule.t)`, *default:* `nil`) - Rules within Channel Grouping. There is a limit of 100 rules that can be
      set per channel grouping.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fallbackName => String.t(),
          :name => String.t(),
          :rules => list(GoogleApi.DoubleClickBidManager.V11.Model.Rule.t())
        }

  field(:fallbackName)
  field(:name)
  field(:rules, as: GoogleApi.DoubleClickBidManager.V11.Model.Rule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V11.Model.ChannelGrouping do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V11.Model.ChannelGrouping.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V11.Model.ChannelGrouping do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
