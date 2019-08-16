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

defmodule GoogleApi.AnalyticsReporting.V4.Model.ResourceQuotasRemaining do
  @moduledoc """
  The resource quota tokens remaining for the property after the request is
  completed.

  ## Attributes

  *   `dailyQuotaTokensRemaining` (*type:* `integer()`, *default:* `nil`) - Daily resource quota remaining remaining.
  *   `hourlyQuotaTokensRemaining` (*type:* `integer()`, *default:* `nil`) - Hourly resource quota tokens remaining.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dailyQuotaTokensRemaining => integer(),
          :hourlyQuotaTokensRemaining => integer()
        }

  field(:dailyQuotaTokensRemaining)
  field(:hourlyQuotaTokensRemaining)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.ResourceQuotasRemaining do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.ResourceQuotasRemaining.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.ResourceQuotasRemaining do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
