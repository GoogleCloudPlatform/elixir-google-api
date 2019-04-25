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

defmodule GoogleApi.Content.V2.Model.Product do
  @moduledoc """
  Product data. After inserting, updating, or deleting a product, it may take several minutes before changes take effect.

  ## Attributes

  - additionalImageLinks ([String.t]): Additional URLs of images of the item. Defaults to: `null`.
  - additionalProductTypes ([String.t]): Additional categories of the item (formatted as in products data specification). Defaults to: `null`.
  - adult (boolean()): Set to true if the item is targeted towards adults. Defaults to: `null`.
  - adwordsGrouping (String.t): Used to group items in an arbitrary way. Only for CPA%, discouraged otherwise. Defaults to: `null`.
  - adwordsLabels ([String.t]): Similar to adwords_grouping, but only works on CPC. Defaults to: `null`.
  - adwordsRedirect (String.t): Allows advertisers to override the item URL when the product is shown within the context of Product Ads. Defaults to: `null`.
  - ageGroup (String.t): Target age group of the item. Defaults to: `null`.
  - aspects ([ProductAspect]): Deprecated. Do not use. Defaults to: `null`.
  - availability (String.t): Availability status of the item. Defaults to: `null`.
  - availabilityDate (String.t): The day a pre-ordered product becomes available for delivery, in ISO 8601 format. Defaults to: `null`.
  - brand (String.t): Brand of the item. Defaults to: `null`.
  - channel (String.t): The item&#39;s channel (online or local). Defaults to: `null`.
  - color (String.t): Color of the item. Defaults to: `null`.
  - condition (String.t): Condition or state of the item. Defaults to: `null`.
  - contentLanguage (String.t): The two-letter ISO 639-1 language code for the item. Defaults to: `null`.
  - costOfGoodsSold (Price): Cost of goods sold. Used for gross profit reporting. Defaults to: `null`.
  - customAttributes ([CustomAttribute]): A list of custom (merchant-provided) attributes. It can also be used for submitting any attribute of the feed specification in its generic form (e.g., { \&quot;name\&quot;: \&quot;size type\&quot;, \&quot;value\&quot;: \&quot;regular\&quot; }). This is useful for submitting attributes not explicitly exposed by the API. Defaults to: `null`.
  - customGroups ([CustomGroup]): A list of custom (merchant-provided) custom attribute groups. Defaults to: `null`.
  - customLabel0 (String.t): Custom label 0 for custom grouping of items in a Shopping campaign. Defaults to: `null`.
  - customLabel1 (String.t): Custom label 1 for custom grouping of items in a Shopping campaign. Defaults to: `null`.
  - customLabel2 (String.t): Custom label 2 for custom grouping of items in a Shopping campaign. Defaults to: `null`.
  - customLabel3 (String.t): Custom label 3 for custom grouping of items in a Shopping campaign. Defaults to: `null`.
  - customLabel4 (String.t): Custom label 4 for custom grouping of items in a Shopping campaign. Defaults to: `null`.
  - description (String.t): Description of the item. Defaults to: `null`.
  - destinations ([ProductDestination]): Specifies the intended destinations for the product. Defaults to: `null`.
  - displayAdsId (String.t): An identifier for an item for dynamic remarketing campaigns. Defaults to: `null`.
  - displayAdsLink (String.t): URL directly to your item&#39;s landing page for dynamic remarketing campaigns. Defaults to: `null`.
  - displayAdsSimilarIds ([String.t]): Advertiser-specified recommendations. Defaults to: `null`.
  - displayAdsTitle (String.t): Title of an item for dynamic remarketing campaigns. Defaults to: `null`.
  - displayAdsValue (float()): Offer margin for dynamic remarketing campaigns. Defaults to: `null`.
  - energyEfficiencyClass (String.t): The energy efficiency class as defined in EU directive 2010/30/EU. Defaults to: `null`.
  - expirationDate (String.t): Date on which the item should expire, as specified upon insertion, in ISO 8601 format. The actual expiration date in Google Shopping is exposed in productstatuses as googleExpirationDate and might be earlier if expirationDate is too far in the future. Defaults to: `null`.
  - gender (String.t): Target gender of the item. Defaults to: `null`.
  - googleProductCategory (String.t): Google&#39;s category of the item (see Google product taxonomy). Defaults to: `null`.
  - gtin (String.t): Global Trade Item Number (GTIN) of the item. Defaults to: `null`.
  - id (String.t): The REST ID of the product. Content API methods that operate on products take this as their productId parameter. The REST ID for a product is of the form channel:contentLanguage:targetCountry:offerId. Defaults to: `null`.
  - identifierExists (boolean()): False when the item does not have unique product identifiers appropriate to its category, such as GTIN, MPN, and brand. Required according to the Unique Product Identifier Rules for all target countries except for Canada. Defaults to: `null`.
  - imageLink (String.t): URL of an image of the item. Defaults to: `null`.
  - installment (Installment): Number and amount of installments to pay for an item. Brazil only. Defaults to: `null`.
  - isBundle (boolean()): Whether the item is a merchant-defined bundle. A bundle is a custom grouping of different products sold by a merchant for a single price. Defaults to: `null`.
  - itemGroupId (String.t): Shared identifier for all variants of the same product. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;content#product\&quot;. Defaults to: `null`.
  - link (String.t): URL directly linking to your item&#39;s page on your website. Defaults to: `null`.
  - loyaltyPoints (LoyaltyPoints): Loyalty points that users receive after purchasing the item. Japan only. Defaults to: `null`.
  - material (String.t): The material of which the item is made. Defaults to: `null`.
  - maxEnergyEfficiencyClass (String.t): The energy efficiency class as defined in EU directive 2010/30/EU. Defaults to: `null`.
  - maxHandlingTime (String.t): Maximal product handling time (in business days). Defaults to: `null`.
  - minEnergyEfficiencyClass (String.t): The energy efficiency class as defined in EU directive 2010/30/EU. Defaults to: `null`.
  - minHandlingTime (String.t): Minimal product handling time (in business days). Defaults to: `null`.
  - mobileLink (String.t): Link to a mobile-optimized version of the landing page. Defaults to: `null`.
  - mpn (String.t): Manufacturer Part Number (MPN) of the item. Defaults to: `null`.
  - multipack (String.t): The number of identical products in a merchant-defined multipack. Defaults to: `null`.
  - offerId (String.t): A unique identifier for the item. Leading and trailing whitespaces are stripped and multiple whitespaces are replaced by a single whitespace upon submission. Only valid unicode characters are accepted. See the products feed specification for details. Note: Content API methods that operate on products take the REST ID of the product, not this identifier. Defaults to: `null`.
  - onlineOnly (boolean()): Deprecated. Whether an item is available for purchase only online. Defaults to: `null`.
  - pattern (String.t): The item&#39;s pattern (e.g. polka dots). Defaults to: `null`.
  - price (Price): Price of the item. Defaults to: `null`.
  - productType (String.t): Your category of the item (formatted as in products data specification). Defaults to: `null`.
  - promotionIds ([String.t]): The unique ID of a promotion. Defaults to: `null`.
  - salePrice (Price): Advertised sale price of the item. Defaults to: `null`.
  - salePriceEffectiveDate (String.t): Date range during which the item is on sale (see products data specification). Defaults to: `null`.
  - sellOnGoogleQuantity (String.t): The quantity of the product that is available for selling on Google. Supported only for online products. Defaults to: `null`.
  - shipping ([ProductShipping]): Shipping rules. Defaults to: `null`.
  - shippingHeight (ProductShippingDimension): Height of the item for shipping. Defaults to: `null`.
  - shippingLabel (String.t): The shipping label of the product, used to group product in account-level shipping rules. Defaults to: `null`.
  - shippingLength (ProductShippingDimension): Length of the item for shipping. Defaults to: `null`.
  - shippingWeight (ProductShippingWeight): Weight of the item for shipping. Defaults to: `null`.
  - shippingWidth (ProductShippingDimension): Width of the item for shipping. Defaults to: `null`.
  - sizeSystem (String.t): System in which the size is specified. Recommended for apparel items. Defaults to: `null`.
  - sizeType (String.t): The cut of the item. Recommended for apparel items. Defaults to: `null`.
  - sizes ([String.t]): Size of the item. Defaults to: `null`.
  - source (String.t): The source of the offer, i.e., how the offer was created. Defaults to: `null`.
  - targetCountry (String.t): The CLDR territory code for the item. Defaults to: `null`.
  - taxes ([ProductTax]): Tax information. Defaults to: `null`.
  - title (String.t): Title of the item. Defaults to: `null`.
  - unitPricingBaseMeasure (ProductUnitPricingBaseMeasure): The preference of the denominator of the unit price. Defaults to: `null`.
  - unitPricingMeasure (ProductUnitPricingMeasure): The measure and dimension of an item. Defaults to: `null`.
  - validatedDestinations ([String.t]): Deprecated. The read-only list of intended destinations which passed validation. Defaults to: `null`.
  - warnings ([Error]): Read-only warnings. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalImageLinks => list(any()),
          :additionalProductTypes => list(any()),
          :adult => any(),
          :adwordsGrouping => any(),
          :adwordsLabels => list(any()),
          :adwordsRedirect => any(),
          :ageGroup => any(),
          :aspects => list(GoogleApi.Content.V2.Model.ProductAspect.t()),
          :availability => any(),
          :availabilityDate => any(),
          :brand => any(),
          :channel => any(),
          :color => any(),
          :condition => any(),
          :contentLanguage => any(),
          :costOfGoodsSold => GoogleApi.Content.V2.Model.Price.t(),
          :customAttributes => list(GoogleApi.Content.V2.Model.CustomAttribute.t()),
          :customGroups => list(GoogleApi.Content.V2.Model.CustomGroup.t()),
          :customLabel0 => any(),
          :customLabel1 => any(),
          :customLabel2 => any(),
          :customLabel3 => any(),
          :customLabel4 => any(),
          :description => any(),
          :destinations => list(GoogleApi.Content.V2.Model.ProductDestination.t()),
          :displayAdsId => any(),
          :displayAdsLink => any(),
          :displayAdsSimilarIds => list(any()),
          :displayAdsTitle => any(),
          :displayAdsValue => any(),
          :energyEfficiencyClass => any(),
          :expirationDate => any(),
          :gender => any(),
          :googleProductCategory => any(),
          :gtin => any(),
          :id => any(),
          :identifierExists => any(),
          :imageLink => any(),
          :installment => GoogleApi.Content.V2.Model.Installment.t(),
          :isBundle => any(),
          :itemGroupId => any(),
          :kind => any(),
          :link => any(),
          :loyaltyPoints => GoogleApi.Content.V2.Model.LoyaltyPoints.t(),
          :material => any(),
          :maxEnergyEfficiencyClass => any(),
          :maxHandlingTime => any(),
          :minEnergyEfficiencyClass => any(),
          :minHandlingTime => any(),
          :mobileLink => any(),
          :mpn => any(),
          :multipack => any(),
          :offerId => any(),
          :onlineOnly => any(),
          :pattern => any(),
          :price => GoogleApi.Content.V2.Model.Price.t(),
          :productType => any(),
          :promotionIds => list(any()),
          :salePrice => GoogleApi.Content.V2.Model.Price.t(),
          :salePriceEffectiveDate => any(),
          :sellOnGoogleQuantity => any(),
          :shipping => list(GoogleApi.Content.V2.Model.ProductShipping.t()),
          :shippingHeight => GoogleApi.Content.V2.Model.ProductShippingDimension.t(),
          :shippingLabel => any(),
          :shippingLength => GoogleApi.Content.V2.Model.ProductShippingDimension.t(),
          :shippingWeight => GoogleApi.Content.V2.Model.ProductShippingWeight.t(),
          :shippingWidth => GoogleApi.Content.V2.Model.ProductShippingDimension.t(),
          :sizeSystem => any(),
          :sizeType => any(),
          :sizes => list(any()),
          :source => any(),
          :targetCountry => any(),
          :taxes => list(GoogleApi.Content.V2.Model.ProductTax.t()),
          :title => any(),
          :unitPricingBaseMeasure => GoogleApi.Content.V2.Model.ProductUnitPricingBaseMeasure.t(),
          :unitPricingMeasure => GoogleApi.Content.V2.Model.ProductUnitPricingMeasure.t(),
          :validatedDestinations => list(any()),
          :warnings => list(GoogleApi.Content.V2.Model.Error.t())
        }

  field(:additionalImageLinks, type: :list)
  field(:additionalProductTypes, type: :list)
  field(:adult)
  field(:adwordsGrouping)
  field(:adwordsLabels, type: :list)
  field(:adwordsRedirect)
  field(:ageGroup)
  field(:aspects, as: GoogleApi.Content.V2.Model.ProductAspect, type: :list)
  field(:availability)
  field(:availabilityDate)
  field(:brand)
  field(:channel)
  field(:color)
  field(:condition)
  field(:contentLanguage)
  field(:costOfGoodsSold, as: GoogleApi.Content.V2.Model.Price)
  field(:customAttributes, as: GoogleApi.Content.V2.Model.CustomAttribute, type: :list)
  field(:customGroups, as: GoogleApi.Content.V2.Model.CustomGroup, type: :list)
  field(:customLabel0)
  field(:customLabel1)
  field(:customLabel2)
  field(:customLabel3)
  field(:customLabel4)
  field(:description)
  field(:destinations, as: GoogleApi.Content.V2.Model.ProductDestination, type: :list)
  field(:displayAdsId)
  field(:displayAdsLink)
  field(:displayAdsSimilarIds, type: :list)
  field(:displayAdsTitle)
  field(:displayAdsValue)
  field(:energyEfficiencyClass)
  field(:expirationDate)
  field(:gender)
  field(:googleProductCategory)
  field(:gtin)
  field(:id)
  field(:identifierExists)
  field(:imageLink)
  field(:installment, as: GoogleApi.Content.V2.Model.Installment)
  field(:isBundle)
  field(:itemGroupId)
  field(:kind)
  field(:link)
  field(:loyaltyPoints, as: GoogleApi.Content.V2.Model.LoyaltyPoints)
  field(:material)
  field(:maxEnergyEfficiencyClass)
  field(:maxHandlingTime)
  field(:minEnergyEfficiencyClass)
  field(:minHandlingTime)
  field(:mobileLink)
  field(:mpn)
  field(:multipack)
  field(:offerId)
  field(:onlineOnly)
  field(:pattern)
  field(:price, as: GoogleApi.Content.V2.Model.Price)
  field(:productType)
  field(:promotionIds, type: :list)
  field(:salePrice, as: GoogleApi.Content.V2.Model.Price)
  field(:salePriceEffectiveDate)
  field(:sellOnGoogleQuantity)
  field(:shipping, as: GoogleApi.Content.V2.Model.ProductShipping, type: :list)
  field(:shippingHeight, as: GoogleApi.Content.V2.Model.ProductShippingDimension)
  field(:shippingLabel)
  field(:shippingLength, as: GoogleApi.Content.V2.Model.ProductShippingDimension)
  field(:shippingWeight, as: GoogleApi.Content.V2.Model.ProductShippingWeight)
  field(:shippingWidth, as: GoogleApi.Content.V2.Model.ProductShippingDimension)
  field(:sizeSystem)
  field(:sizeType)
  field(:sizes, type: :list)
  field(:source)
  field(:targetCountry)
  field(:taxes, as: GoogleApi.Content.V2.Model.ProductTax, type: :list)
  field(:title)
  field(:unitPricingBaseMeasure, as: GoogleApi.Content.V2.Model.ProductUnitPricingBaseMeasure)
  field(:unitPricingMeasure, as: GoogleApi.Content.V2.Model.ProductUnitPricingMeasure)
  field(:validatedDestinations, type: :list)
  field(:warnings, as: GoogleApi.Content.V2.Model.Error, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Product do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.Product.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Product do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
