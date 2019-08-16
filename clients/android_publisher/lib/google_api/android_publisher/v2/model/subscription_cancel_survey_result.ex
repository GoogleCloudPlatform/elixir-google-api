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

defmodule GoogleApi.AndroidPublisher.V2.Model.SubscriptionCancelSurveyResult do
  @moduledoc """
  Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey).

  ## Attributes

  *   `cancelSurveyReason` (*type:* `integer()`, *default:* `nil`) - The cancellation reason the user chose in the survey. Possible values are:  
      - Other 
      - I don't use this service enough 
      - Technical issues 
      - Cost-related reasons 
      - I found a better app
  *   `userInputCancelReason` (*type:* `String.t`, *default:* `nil`) - The customized input cancel reason from the user. Only present when cancelReason is 0.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cancelSurveyReason => integer(),
          :userInputCancelReason => String.t()
        }

  field(:cancelSurveyReason)
  field(:userInputCancelReason)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V2.Model.SubscriptionCancelSurveyResult do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V2.Model.SubscriptionCancelSurveyResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V2.Model.SubscriptionCancelSurveyResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
