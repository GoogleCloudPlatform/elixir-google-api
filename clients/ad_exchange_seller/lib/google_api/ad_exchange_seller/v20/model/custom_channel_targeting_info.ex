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

defmodule GoogleApi.AdExchangeSeller.V20.Model.CustomChannelTargetingInfo do
  @moduledoc """
  The targeting information of this custom channel, if activated.

  ## Attributes

  - adsAppearOn (String.t): The name used to describe this channel externally. Defaults to: `null`.
  - description (String.t): The external description of the channel. Defaults to: `null`.
  - location (String.t): The locations in which ads appear. (Only valid for content and mobile content ads). Acceptable values for content ads are: TOP_LEFT, TOP_CENTER, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT, MULTIPLE_LOCATIONS. Acceptable values for mobile content ads are: TOP, MIDDLE, BOTTOM, MULTIPLE_LOCATIONS. Defaults to: `null`.
  - siteLanguage (String.t): The language of the sites ads will be displayed on. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adsAppearOn => any(),
          :description => any(),
          :location => any(),
          :siteLanguage => any()
        }

  field(:adsAppearOn)
  field(:description)
  field(:location)
  field(:siteLanguage)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeSeller.V20.Model.CustomChannelTargetingInfo do
  def decode(value, options) do
    GoogleApi.AdExchangeSeller.V20.Model.CustomChannelTargetingInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeSeller.V20.Model.CustomChannelTargetingInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
