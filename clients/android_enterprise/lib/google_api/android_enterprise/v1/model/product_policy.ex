# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AndroidEnterprise.V1.Model.ProductPolicy do
  @moduledoc """
  The policy for a product.

  ## Attributes

  - autoInstallPolicy (AutoInstallPolicy): The auto install policy for the product. Defaults to: `null`.
  - productId (String.t): The ID of the product. For example, \&quot;app:com.google.android.gm\&quot;. Defaults to: `null`.
  - trackIds ([String.t]): Grants the device visibility to the specified product release track(s), identified by trackIds. The list of release tracks of a product can be obtained by calling Products.Get. Defaults to: `null`.
  - tracks ([String.t]): Deprecated. Use trackIds instead. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoInstallPolicy => GoogleApi.AndroidEnterprise.V1.Model.AutoInstallPolicy.t(),
          :productId => any(),
          :trackIds => list(any()),
          :tracks => list(any())
        }

  field(:autoInstallPolicy, as: GoogleApi.AndroidEnterprise.V1.Model.AutoInstallPolicy)
  field(:productId)
  field(:trackIds, type: :list)
  field(:tracks, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductPolicy do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.ProductPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
