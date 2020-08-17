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

defmodule GoogleApi.RealTimeBidding.V1.Model.PolicyTopicEntry do
  @moduledoc """
  Each policy topic entry will represent a violation of a policy topic for a creative, with the policy topic information and optional evidence for the policy violation.

  ## Attributes

  *   `evidences` (*type:* `list(GoogleApi.RealTimeBidding.V1.Model.PolicyTopicEvidence.t)`, *default:* `nil`) - Pieces of evidence associated with this policy topic entry.
  *   `helpCenterUrl` (*type:* `String.t`, *default:* `nil`) - URL of the help center article describing this policy topic.
  *   `policyTopic` (*type:* `String.t`, *default:* `nil`) - Policy topic this entry refers to. For example, "ALCOHOL", "TRADEMARKS_IN_AD_TEXT", or "DESTINATION_NOT_WORKING". The set of possible policy topics is not fixed for a particular API version and may change at any time. Can be used to filter the response of the creatives.list method
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :evidences => list(GoogleApi.RealTimeBidding.V1.Model.PolicyTopicEvidence.t()),
          :helpCenterUrl => String.t(),
          :policyTopic => String.t()
        }

  field(:evidences, as: GoogleApi.RealTimeBidding.V1.Model.PolicyTopicEvidence, type: :list)
  field(:helpCenterUrl)
  field(:policyTopic)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.PolicyTopicEntry do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.PolicyTopicEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.PolicyTopicEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
