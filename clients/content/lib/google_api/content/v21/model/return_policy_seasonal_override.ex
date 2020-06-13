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

defmodule GoogleApi.Content.V21.Model.ReturnPolicySeasonalOverride do
  @moduledoc """


  ## Attributes

  *   `endDate` (*type:* `String.t`, *default:* `nil`) - Required. Last day on which the override applies. In ISO 8601 format.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name of the seasonal override as shown in Merchant Center.
  *   `policy` (*type:* `GoogleApi.Content.V21.Model.ReturnPolicyPolicy.t`, *default:* `nil`) - Required. The policy which is in effect during that time.
  *   `startDate` (*type:* `String.t`, *default:* `nil`) - Required. First day on which the override applies. In ISO 8601 format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endDate => String.t(),
          :name => String.t(),
          :policy => GoogleApi.Content.V21.Model.ReturnPolicyPolicy.t(),
          :startDate => String.t()
        }

  field(:endDate)
  field(:name)
  field(:policy, as: GoogleApi.Content.V21.Model.ReturnPolicyPolicy)
  field(:startDate)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ReturnPolicySeasonalOverride do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ReturnPolicySeasonalOverride.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ReturnPolicySeasonalOverride do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
