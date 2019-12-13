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

defmodule GoogleApi.ServiceUsage.V1.Model.BatchCreateConsumerOverridesResponse do
  @moduledoc """
  Response message for BatchCreateConsumerOverrides

  ## Attributes

  *   `overrides` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.QuotaOverride.t)`, *default:* `nil`) - The overrides that were created.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :overrides => list(GoogleApi.ServiceUsage.V1.Model.QuotaOverride.t())
        }

  field(:overrides, as: GoogleApi.ServiceUsage.V1.Model.QuotaOverride, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.BatchCreateConsumerOverridesResponse do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.BatchCreateConsumerOverridesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.BatchCreateConsumerOverridesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
