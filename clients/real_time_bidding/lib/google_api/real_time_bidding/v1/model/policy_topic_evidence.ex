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

defmodule GoogleApi.RealTimeBidding.V1.Model.PolicyTopicEvidence do
  @moduledoc """
  Evidence associated with a policy topic entry.

  ## Attributes

  *   `destinationNotCrawlable` (*type:* `GoogleApi.RealTimeBidding.V1.Model.DestinationNotCrawlableEvidence.t`, *default:* `nil`) - The creative's destination URL was not crawlable by Google.
  *   `destinationNotWorking` (*type:* `GoogleApi.RealTimeBidding.V1.Model.DestinationNotWorkingEvidence.t`, *default:* `nil`) - The creative's destination URL did not function properly or was incorrectly set up.
  *   `destinationUrl` (*type:* `GoogleApi.RealTimeBidding.V1.Model.DestinationUrlEvidence.t`, *default:* `nil`) - URL of the actual landing page.
  *   `domainCall` (*type:* `GoogleApi.RealTimeBidding.V1.Model.DomainCallEvidence.t`, *default:* `nil`) - Number of HTTP calls made by the creative, broken down by domain.
  *   `downloadSize` (*type:* `GoogleApi.RealTimeBidding.V1.Model.DownloadSizeEvidence.t`, *default:* `nil`) - Total download size and URL-level download size breakdown for resources in a creative.
  *   `httpCall` (*type:* `GoogleApi.RealTimeBidding.V1.Model.HttpCallEvidence.t`, *default:* `nil`) - HTTP calls made by the creative that resulted in policy violations.
  *   `httpCookie` (*type:* `GoogleApi.RealTimeBidding.V1.Model.HttpCookieEvidence.t`, *default:* `nil`) - Evidence for HTTP cookie-related policy violations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destinationNotCrawlable =>
            GoogleApi.RealTimeBidding.V1.Model.DestinationNotCrawlableEvidence.t() | nil,
          :destinationNotWorking =>
            GoogleApi.RealTimeBidding.V1.Model.DestinationNotWorkingEvidence.t() | nil,
          :destinationUrl => GoogleApi.RealTimeBidding.V1.Model.DestinationUrlEvidence.t() | nil,
          :domainCall => GoogleApi.RealTimeBidding.V1.Model.DomainCallEvidence.t() | nil,
          :downloadSize => GoogleApi.RealTimeBidding.V1.Model.DownloadSizeEvidence.t() | nil,
          :httpCall => GoogleApi.RealTimeBidding.V1.Model.HttpCallEvidence.t() | nil,
          :httpCookie => GoogleApi.RealTimeBidding.V1.Model.HttpCookieEvidence.t() | nil
        }

  field(:destinationNotCrawlable,
    as: GoogleApi.RealTimeBidding.V1.Model.DestinationNotCrawlableEvidence
  )

  field(:destinationNotWorking,
    as: GoogleApi.RealTimeBidding.V1.Model.DestinationNotWorkingEvidence
  )

  field(:destinationUrl, as: GoogleApi.RealTimeBidding.V1.Model.DestinationUrlEvidence)
  field(:domainCall, as: GoogleApi.RealTimeBidding.V1.Model.DomainCallEvidence)
  field(:downloadSize, as: GoogleApi.RealTimeBidding.V1.Model.DownloadSizeEvidence)
  field(:httpCall, as: GoogleApi.RealTimeBidding.V1.Model.HttpCallEvidence)
  field(:httpCookie, as: GoogleApi.RealTimeBidding.V1.Model.HttpCookieEvidence)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.PolicyTopicEvidence do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.PolicyTopicEvidence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.PolicyTopicEvidence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
