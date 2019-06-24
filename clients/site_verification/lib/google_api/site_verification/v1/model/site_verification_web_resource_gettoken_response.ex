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

defmodule GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenResponse do
  @moduledoc """


  ## Attributes

  *   `method` (*type:* `String.t`, *default:* `nil`) - The verification method to use in conjunction with this token. For FILE, the token should be placed in the top-level directory of the site, stored inside a file of the same name. For META, the token should be placed in the HEAD tag of the default page that is loaded for the site. For DNS, the token should be placed in a TXT record of the domain.
  *   `token` (*type:* `String.t`, *default:* `nil`) - The verification token. The token must be placed appropriately in order for verification to succeed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :method => String.t(),
          :token => String.t()
        }

  field(:method)
  field(:token)
end

defimpl Poison.Decoder,
  for: GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenResponse do
  def decode(value, options) do
    GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
