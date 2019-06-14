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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.Creative do
  @moduledoc """
  A creative and its classification data.

  ## Attributes

  - HTMLSnippet (String.t): The HTML snippet that displays the ad when inserted in the web page. If set, videoURL, videoVastXML, and nativeAd should not be set. Defaults to `nil`.
  - accountId (integer()): Account id. Defaults to `nil`.
  - adChoicesDestinationUrl (String.t): The link to the Ad Preferences page. This is only supported for native ads. Defaults to `nil`.
  - advertiserId (list(String.t)): Detected advertiser id, if any. Read-only. This field should not be set in requests. Defaults to `nil`.
  - advertiserName (String.t): The name of the company being advertised in the creative. The value provided must exist in the advertisers.txt file. Defaults to `nil`.
  - agencyId (String.t): The agency id for this creative. Defaults to `nil`.
  - apiUploadTimestamp (DateTime.t): The last upload timestamp of this creative if it was uploaded via API. Read-only. The value of this field is generated, and will be ignored for uploads. (formatted RFC 3339 timestamp). Defaults to `nil`.
  - attribute (list(integer())): List of buyer selectable attributes for the ads that may be shown from this snippet. Each attribute is represented by an integer as defined in  buyer-declarable-creative-attributes.txt. Defaults to `nil`.
  - buyerCreativeId (String.t): A buyer-specific id identifying the creative in this ad. Defaults to `nil`.
  - clickThroughUrl (list(String.t)): The set of destination urls for the snippet. Defaults to `nil`.
  - corrections (list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeCorrections.t)): Shows any corrections that were applied to this creative. Read-only. This field should not be set in requests. Defaults to `nil`.
  - creativeStatusIdentityType (String.t): Creative status identity type that the creative item applies to. Ad Exchange real-time bidding is migrating to the sizeless creative verification. Originally, Ad Exchange assigned creative verification status to a unique combination of a buyer creative ID and creative dimensions. Post-migration, a single verification status will be assigned at the buyer creative ID level. This field allows to distinguish whether a given creative status applies to a unique combination of a buyer creative ID and creative dimensions, or to a buyer creative ID as a whole. Defaults to `nil`.
  - dealsStatus (String.t): Top-level deals status. Read-only. This field should not be set in requests. If disapproved, an entry for auctionType=DIRECT_DEALS (or ALL) in servingRestrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case it may be preferable to read from servingRestrictions directly. Defaults to `nil`.
  - detectedDomains (list(String.t)): Detected domains for this creative. Read-only. This field should not be set in requests. Defaults to `nil`.
  - filteringReasons (GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasons.t): The filtering reasons for the creative. Read-only. This field should not be set in requests. Defaults to `nil`.
  - height (integer()): Ad height. Defaults to `nil`.
  - impressionTrackingUrl (list(String.t)): The set of urls to be called to record an impression. Defaults to `nil`.
  - kind (String.t): Resource type. Defaults to `adexchangebuyer#creative`.
  - languages (list(String.t)): Detected languages for this creative. Read-only. This field should not be set in requests. Defaults to `nil`.
  - nativeAd (GoogleApi.AdExchangeBuyer.V14.Model.CreativeNativeAd.t): If nativeAd is set, HTMLSnippet, videoVastXML, and the videoURL outside of nativeAd should not be set. (The videoURL inside nativeAd can be set.) Defaults to `nil`.
  - openAuctionStatus (String.t): Top-level open auction status. Read-only. This field should not be set in requests. If disapproved, an entry for auctionType=OPEN_AUCTION (or ALL) in servingRestrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case it may be preferable to read from ServingRestrictions directly. Defaults to `nil`.
  - productCategories (list(integer())): Detected product categories, if any. Each category is represented by an integer as defined in  ad-product-categories.txt. Read-only. This field should not be set in requests. Defaults to `nil`.
  - restrictedCategories (list(integer())): All restricted categories for the ads that may be shown from this snippet. Each category is represented by an integer as defined in the  ad-restricted-categories.txt. Defaults to `nil`.
  - sensitiveCategories (list(integer())): Detected sensitive categories, if any. Each category is represented by an integer as defined in  ad-sensitive-categories.txt. Read-only. This field should not be set in requests. Defaults to `nil`.
  - servingRestrictions (list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeServingRestrictions.t)): The granular status of this ad in specific contexts. A context here relates to where something ultimately serves (for example, a physical location, a platform, an HTTPS vs HTTP request, or the type of auction). Read-only. This field should not be set in requests. See the examples in the Creatives guide for more details. Defaults to `nil`.
  - vendorType (list(integer())): List of vendor types for the ads that may be shown from this snippet. Each vendor type is represented by an integer as defined in vendors.txt. Defaults to `nil`.
  - version (integer()): The version for this creative. Read-only. This field should not be set in requests. Defaults to `nil`.
  - videoURL (String.t): The URL to fetch a video ad. If set, HTMLSnippet, videoVastXML, and nativeAd should not be set. Note, this is different from resource.native_ad.video_url above. Defaults to `nil`.
  - videoVastXML (String.t): The contents of a VAST document for a video ad. This document should conform to the VAST 2.0 or 3.0 standard. If set, HTMLSnippet, videoURL, and nativeAd and should not be set. Defaults to `nil`.
  - width (integer()): Ad width. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :HTMLSnippet => String.t(),
          :accountId => integer(),
          :adChoicesDestinationUrl => String.t(),
          :advertiserId => list(String.t()),
          :advertiserName => String.t(),
          :agencyId => String.t(),
          :apiUploadTimestamp => DateTime.t(),
          :attribute => list(integer()),
          :buyerCreativeId => String.t(),
          :clickThroughUrl => list(String.t()),
          :corrections => list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeCorrections.t()),
          :creativeStatusIdentityType => String.t(),
          :dealsStatus => String.t(),
          :detectedDomains => list(String.t()),
          :filteringReasons => GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasons.t(),
          :height => integer(),
          :impressionTrackingUrl => list(String.t()),
          :kind => String.t(),
          :languages => list(String.t()),
          :nativeAd => GoogleApi.AdExchangeBuyer.V14.Model.CreativeNativeAd.t(),
          :openAuctionStatus => String.t(),
          :productCategories => list(integer()),
          :restrictedCategories => list(integer()),
          :sensitiveCategories => list(integer()),
          :servingRestrictions =>
            list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeServingRestrictions.t()),
          :vendorType => list(integer()),
          :version => integer(),
          :videoURL => String.t(),
          :videoVastXML => String.t(),
          :width => integer()
        }

  field(:HTMLSnippet)
  field(:accountId)
  field(:adChoicesDestinationUrl)
  field(:advertiserId, type: :list)
  field(:advertiserName)
  field(:agencyId)
  field(:apiUploadTimestamp, as: DateTime)
  field(:attribute, type: :list)
  field(:buyerCreativeId)
  field(:clickThroughUrl, type: :list)
  field(:corrections, as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeCorrections, type: :list)
  field(:creativeStatusIdentityType)
  field(:dealsStatus)
  field(:detectedDomains, type: :list)
  field(:filteringReasons, as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasons)
  field(:height)
  field(:impressionTrackingUrl, type: :list)
  field(:kind)
  field(:languages, type: :list)
  field(:nativeAd, as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeNativeAd)
  field(:openAuctionStatus)
  field(:productCategories, type: :list)
  field(:restrictedCategories, type: :list)
  field(:sensitiveCategories, type: :list)

  field(
    :servingRestrictions,
    as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeServingRestrictions,
    type: :list
  )

  field(:vendorType, type: :list)
  field(:version)
  field(:videoURL)
  field(:videoVastXML)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Creative do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.Creative.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Creative do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
