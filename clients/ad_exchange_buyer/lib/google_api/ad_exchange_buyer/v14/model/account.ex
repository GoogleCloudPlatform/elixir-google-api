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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.Account do
  @moduledoc """
  Configuration data for an Ad Exchange buyer account.

  ## Attributes

  *   `applyPretargetingToNonGuaranteedDeals` (*type:* `boolean()`, *default:* `nil`) - When this is false, bid requests that include a deal ID for a private auction or preferred deal are always sent to your bidder. When true, all active pretargeting configs will be applied to private auctions and preferred deals. Programmatic Guaranteed deals (when enabled) are always sent to your bidder.
  *   `bidderLocation` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.AccountBidderLocation.t)`, *default:* `nil`) - Your bidder locations that have distinct URLs.
  *   `cookieMatchingNid` (*type:* `String.t`, *default:* `nil`) - The nid parameter value used in cookie match requests. Please contact your technical account manager if you need to change this.
  *   `cookieMatchingUrl` (*type:* `String.t`, *default:* `nil`) - The base URL used in cookie match requests.
  *   `id` (*type:* `integer()`, *default:* `nil`) - Account id.
  *   `kind` (*type:* `String.t`, *default:* `adexchangebuyer#account`) - Resource type.
  *   `maximumActiveCreatives` (*type:* `integer()`, *default:* `nil`) - The maximum number of active creatives that an account can have, where a creative is active if it was inserted or bid with in the last 30 days. Please contact your technical account manager if you need to change this.
  *   `maximumTotalQps` (*type:* `integer()`, *default:* `nil`) - The sum of all bidderLocation.maximumQps values cannot exceed this. Please contact your technical account manager if you need to change this.
  *   `numberActiveCreatives` (*type:* `integer()`, *default:* `nil`) - The number of creatives that this account inserted or bid with in the last 30 days.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applyPretargetingToNonGuaranteedDeals => boolean(),
          :bidderLocation => list(GoogleApi.AdExchangeBuyer.V14.Model.AccountBidderLocation.t()),
          :cookieMatchingNid => String.t(),
          :cookieMatchingUrl => String.t(),
          :id => integer(),
          :kind => String.t(),
          :maximumActiveCreatives => integer(),
          :maximumTotalQps => integer(),
          :numberActiveCreatives => integer()
        }

  field(:applyPretargetingToNonGuaranteedDeals)

  field(:bidderLocation,
    as: GoogleApi.AdExchangeBuyer.V14.Model.AccountBidderLocation,
    type: :list
  )

  field(:cookieMatchingNid)
  field(:cookieMatchingUrl)
  field(:id)
  field(:kind)
  field(:maximumActiveCreatives)
  field(:maximumTotalQps)
  field(:numberActiveCreatives)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Account do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.Account.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Account do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
