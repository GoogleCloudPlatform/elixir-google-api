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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig do
  @moduledoc """


  ## Attributes

  - billingId (String.t): The id for billing purposes, provided for reference. Leave this field blank for insert requests; the id will be generated automatically. Defaults to `nil`.
  - configId (String.t): The config id; generated automatically. Leave this field blank for insert requests. Defaults to `nil`.
  - configName (String.t): The name of the config. Must be unique. Required for all requests. Defaults to `nil`.
  - creativeType (list(String.t)): List must contain exactly one of PRETARGETING_CREATIVE_TYPE_HTML or PRETARGETING_CREATIVE_TYPE_VIDEO. Defaults to `nil`.
  - dimensions (list(GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigDimensions.t)): Requests which allow one of these (width, height) pairs will match. All pairs must be supported ad dimensions. Defaults to `nil`.
  - excludedContentLabels (list(String.t)): Requests with any of these content labels will not match. Values are from content-labels.txt in the downloadable files section. Defaults to `nil`.
  - excludedGeoCriteriaIds (list(String.t)): Requests containing any of these geo criteria ids will not match. Defaults to `nil`.
  - excludedPlacements (list(GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigExcludedPlacements.t)): Requests containing any of these placements will not match. Defaults to `nil`.
  - excludedUserLists (list(String.t)): Requests containing any of these users list ids will not match. Defaults to `nil`.
  - excludedVerticals (list(String.t)): Requests containing any of these vertical ids will not match. Values are from the publisher-verticals.txt file in the downloadable files section. Defaults to `nil`.
  - geoCriteriaIds (list(String.t)): Requests containing any of these geo criteria ids will match. Defaults to `nil`.
  - isActive (boolean()): Whether this config is active. Required for all requests. Defaults to `nil`.
  - kind (String.t): The kind of the resource, i.e. "adexchangebuyer#pretargetingConfig". Defaults to `adexchangebuyer#pretargetingConfig`.
  - languages (list(String.t)): Request containing any of these language codes will match. Defaults to `nil`.
  - minimumViewabilityDecile (integer()): Requests where the predicted viewability is below the specified decile will not match. E.g. if the buyer sets this value to 5, requests from slots where the predicted viewability is below 50% will not match. If the predicted viewability is unknown this field will be ignored. Defaults to `nil`.
  - mobileCarriers (list(String.t)): Requests containing any of these mobile carrier ids will match. Values are from mobile-carriers.csv in the downloadable files section. Defaults to `nil`.
  - mobileDevices (list(String.t)): Requests containing any of these mobile device ids will match. Values are from mobile-devices.csv in the downloadable files section. Defaults to `nil`.
  - mobileOperatingSystemVersions (list(String.t)): Requests containing any of these mobile operating system version ids will match. Values are from mobile-os.csv in the downloadable files section. Defaults to `nil`.
  - placements (list(GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigPlacements.t)): Requests containing any of these placements will match. Defaults to `nil`.
  - platforms (list(String.t)): Requests matching any of these platforms will match. Possible values are PRETARGETING_PLATFORM_MOBILE, PRETARGETING_PLATFORM_DESKTOP, and PRETARGETING_PLATFORM_TABLET. Defaults to `nil`.
  - supportedCreativeAttributes (list(String.t)): Creative attributes should be declared here if all creatives corresponding to this pretargeting configuration have that creative attribute. Values are from pretargetable-creative-attributes.txt in the downloadable files section. Defaults to `nil`.
  - userIdentifierDataRequired (list(String.t)): Requests containing the specified type of user data will match. Possible values are HOSTED_MATCH_DATA, which means the request is cookie-targetable and has a match in the buyer's hosted match table, and COOKIE_OR_IDFA, which means the request has either a targetable cookie or an iOS IDFA. Defaults to `nil`.
  - userLists (list(String.t)): Requests containing any of these user list ids will match. Defaults to `nil`.
  - vendorTypes (list(String.t)): Requests that allow any of these vendor ids will match. Values are from vendors.txt in the downloadable files section. Defaults to `nil`.
  - verticals (list(String.t)): Requests containing any of these vertical ids will match. Defaults to `nil`.
  - videoPlayerSizes (list(GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigVideoPlayerSizes.t)): Video requests satisfying any of these player size constraints will match. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingId => String.t(),
          :configId => String.t(),
          :configName => String.t(),
          :creativeType => list(String.t()),
          :dimensions =>
            list(GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigDimensions.t()),
          :excludedContentLabels => list(String.t()),
          :excludedGeoCriteriaIds => list(String.t()),
          :excludedPlacements =>
            list(GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigExcludedPlacements.t()),
          :excludedUserLists => list(String.t()),
          :excludedVerticals => list(String.t()),
          :geoCriteriaIds => list(String.t()),
          :isActive => boolean(),
          :kind => String.t(),
          :languages => list(String.t()),
          :minimumViewabilityDecile => integer(),
          :mobileCarriers => list(String.t()),
          :mobileDevices => list(String.t()),
          :mobileOperatingSystemVersions => list(String.t()),
          :placements =>
            list(GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigPlacements.t()),
          :platforms => list(String.t()),
          :supportedCreativeAttributes => list(String.t()),
          :userIdentifierDataRequired => list(String.t()),
          :userLists => list(String.t()),
          :vendorTypes => list(String.t()),
          :verticals => list(String.t()),
          :videoPlayerSizes =>
            list(GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigVideoPlayerSizes.t())
        }

  field(:billingId)
  field(:configId)
  field(:configName)
  field(:creativeType, type: :list)

  field(
    :dimensions,
    as: GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigDimensions,
    type: :list
  )

  field(:excludedContentLabels, type: :list)
  field(:excludedGeoCriteriaIds, type: :list)

  field(
    :excludedPlacements,
    as: GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigExcludedPlacements,
    type: :list
  )

  field(:excludedUserLists, type: :list)
  field(:excludedVerticals, type: :list)
  field(:geoCriteriaIds, type: :list)
  field(:isActive)
  field(:kind)
  field(:languages, type: :list)
  field(:minimumViewabilityDecile)
  field(:mobileCarriers, type: :list)
  field(:mobileDevices, type: :list)
  field(:mobileOperatingSystemVersions, type: :list)

  field(
    :placements,
    as: GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigPlacements,
    type: :list
  )

  field(:platforms, type: :list)
  field(:supportedCreativeAttributes, type: :list)
  field(:userIdentifierDataRequired, type: :list)
  field(:userLists, type: :list)
  field(:vendorTypes, type: :list)
  field(:verticals, type: :list)

  field(
    :videoPlayerSizes,
    as: GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigVideoPlayerSizes,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
