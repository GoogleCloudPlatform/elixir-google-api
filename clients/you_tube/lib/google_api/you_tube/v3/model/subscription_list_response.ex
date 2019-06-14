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

defmodule GoogleApi.YouTube.V3.Model.SubscriptionListResponse do
  @moduledoc """


  ## Attributes

  - etag (String.t): Etag of this resource. Defaults to `nil`.
  - eventId (String.t): Serialized EventId of the request which produced this response. Defaults to `nil`.
  - items (list(GoogleApi.YouTube.V3.Model.Subscription.t)): A list of subscriptions that match the request criteria. Defaults to `nil`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string "youtube#subscriptionListResponse". Defaults to `youtube#subscriptionListResponse`.
  - nextPageToken (String.t): The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. Defaults to `nil`.
  - pageInfo (GoogleApi.YouTube.V3.Model.PageInfo.t):  Defaults to `nil`.
  - prevPageToken (String.t): The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. Defaults to `nil`.
  - tokenPagination (GoogleApi.YouTube.V3.Model.TokenPagination.t):  Defaults to `nil`.
  - visitorId (String.t): The visitorId identifies the visitor. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :eventId => String.t(),
          :items => list(GoogleApi.YouTube.V3.Model.Subscription.t()),
          :kind => String.t(),
          :nextPageToken => String.t(),
          :pageInfo => GoogleApi.YouTube.V3.Model.PageInfo.t(),
          :prevPageToken => String.t(),
          :tokenPagination => GoogleApi.YouTube.V3.Model.TokenPagination.t(),
          :visitorId => String.t()
        }

  field(:etag)
  field(:eventId)
  field(:items, as: GoogleApi.YouTube.V3.Model.Subscription, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:pageInfo, as: GoogleApi.YouTube.V3.Model.PageInfo)
  field(:prevPageToken)
  field(:tokenPagination, as: GoogleApi.YouTube.V3.Model.TokenPagination)
  field(:visitorId)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.SubscriptionListResponse do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.SubscriptionListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.SubscriptionListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
