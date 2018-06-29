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

defmodule GoogleApi.Partners.V2.Model.LocalizedCompanyInfo do
  @moduledoc """
  The localized company information.

  ## Attributes

  - countryCodes ([String.t]): List of country codes for the localized company info. Defaults to: `null`.
  - displayName (String.t): Localized display name. Defaults to: `null`.
  - languageCode (String.t): Language code of the localized company info, as defined by &lt;a href&#x3D;\&quot;https://tools.ietf.org/html/bcp47\&quot;&gt;BCP 47&lt;/a&gt; (IETF BCP 47, \&quot;Tags for Identifying Languages\&quot;). Defaults to: `null`.
  - overview (String.t): Localized brief description that the company uses to advertise themselves. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countryCodes => list(any()),
          :displayName => any(),
          :languageCode => any(),
          :overview => any()
        }

  field(:countryCodes, type: :list)
  field(:displayName)
  field(:languageCode)
  field(:overview)
end

defimpl Poison.Decoder, for: GoogleApi.Partners.V2.Model.LocalizedCompanyInfo do
  def decode(value, options) do
    GoogleApi.Partners.V2.Model.LocalizedCompanyInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Partners.V2.Model.LocalizedCompanyInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
