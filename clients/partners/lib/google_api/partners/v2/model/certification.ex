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

defmodule GoogleApi.Partners.V2.Model.Certification do
  @moduledoc """
  A user&#39;s information on a specific certification.

  ## Attributes

  - achieved (boolean()): Whether this certification has been achieved. Defaults to: `null`.
  - certificationType (String.t): The type of certification, the area of expertise. Defaults to: `null`.
    - Enum - one of [CERTIFICATION_TYPE_UNSPECIFIED, CT_ADWORDS, CT_YOUTUBE, CT_VIDEOADS, CT_ANALYTICS, CT_DOUBLECLICK, CT_SHOPPING, CT_MOBILE, CT_DIGITAL_SALES, CT_ADWORDS_SEARCH, CT_ADWORDS_DISPLAY, CT_MOBILE_SITES]
  - expiration (DateTime.t): Date this certification is due to expire. Defaults to: `null`.
  - lastAchieved (DateTime.t): The date the user last achieved certification. Defaults to: `null`.
  - warning (boolean()): Whether this certification is in the state of warning. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :achieved => any(),
          :certificationType => any(),
          :expiration => DateTime.t(),
          :lastAchieved => DateTime.t(),
          :warning => any()
        }

  field(:achieved)
  field(:certificationType)
  field(:expiration, as: DateTime)
  field(:lastAchieved, as: DateTime)
  field(:warning)
end

defimpl Poison.Decoder, for: GoogleApi.Partners.V2.Model.Certification do
  def decode(value, options) do
    GoogleApi.Partners.V2.Model.Certification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Partners.V2.Model.Certification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
