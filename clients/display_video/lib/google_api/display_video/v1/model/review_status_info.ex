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

defmodule GoogleApi.DisplayVideo.V1.Model.ReviewStatusInfo do
  @moduledoc """
  Review statuses for the creative.

  ## Attributes

  *   `approvalStatus` (*type:* `String.t`, *default:* `nil`) - Represents the basic approval needed for a creative to begin serving.
      Summary of
      creative_and_landing_page_review_status
      and
      content_and_policy_review_status.
  *   `contentAndPolicyReviewStatus` (*type:* `String.t`, *default:* `nil`) - Content and policy review status for the creative.
  *   `creativeAndLandingPageReviewStatus` (*type:* `String.t`, *default:* `nil`) - Creative and landing page review status for the creative.
  *   `exchangeReviewStatuses` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.ExchangeReviewStatus.t)`, *default:* `nil`) - Exchange review statuses for the creative.
  *   `publisherReviewStatuses` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.PublisherReviewStatus.t)`, *default:* `nil`) - Publisher review statuses for the creative.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :approvalStatus => String.t(),
          :contentAndPolicyReviewStatus => String.t(),
          :creativeAndLandingPageReviewStatus => String.t(),
          :exchangeReviewStatuses =>
            list(GoogleApi.DisplayVideo.V1.Model.ExchangeReviewStatus.t()),
          :publisherReviewStatuses =>
            list(GoogleApi.DisplayVideo.V1.Model.PublisherReviewStatus.t())
        }

  field(:approvalStatus)
  field(:contentAndPolicyReviewStatus)
  field(:creativeAndLandingPageReviewStatus)

  field(:exchangeReviewStatuses,
    as: GoogleApi.DisplayVideo.V1.Model.ExchangeReviewStatus,
    type: :list
  )

  field(:publisherReviewStatuses,
    as: GoogleApi.DisplayVideo.V1.Model.PublisherReviewStatus,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.ReviewStatusInfo do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.ReviewStatusInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.ReviewStatusInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
