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

defmodule GoogleApi.AndroidEnterprise.V1.Model.ProductVisibility do
  @moduledoc """
  A product to be made visible to a user.

  ## Attributes

  *   `productId` (*type:* `String.t`, *default:* `nil`) - The product ID to make visible to the user. Required for each item in the productVisibility list.
  *   `trackIds` (*type:* `list(String.t)`, *default:* `nil`) - Grants the user visibility to the specified product track(s), identified by trackIds.
  *   `tracks` (*type:* `list(String.t)`, *default:* `nil`) - Deprecated. Use trackIds instead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :productId => String.t(),
          :trackIds => list(String.t()),
          :tracks => list(String.t())
        }

  field(:productId)
  field(:trackIds, type: :list)
  field(:tracks, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductVisibility do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.ProductVisibility.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductVisibility do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
