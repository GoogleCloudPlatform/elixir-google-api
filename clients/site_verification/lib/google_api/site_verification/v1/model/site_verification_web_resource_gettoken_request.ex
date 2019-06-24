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

defmodule GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenRequest do
  @moduledoc """


  ## Attributes

  *   `site` (*type:* `GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenRequestSite.t`, *default:* `nil`) - The site for which a verification token will be generated.
  *   `verificationMethod` (*type:* `String.t`, *default:* `nil`) - The verification method that will be used to verify this site. For sites, 'FILE' or 'META' methods may be used. For domains, only 'DNS' may be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :site =>
            GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenRequestSite.t(),
          :verificationMethod => String.t()
        }

  field(
    :site,
    as: GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenRequestSite
  )

  field(:verificationMethod)
end

defimpl Poison.Decoder,
  for: GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenRequest do
  def decode(value, options) do
    GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
