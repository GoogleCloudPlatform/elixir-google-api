# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Content.V21.Model.Product do
  @moduledoc """
   Required product attributes are primarily defined by the products data specification. See the Products Data Specification Help Center article for information. Product data. After inserting, updating, or deleting a product, it may take several minutes before changes take effect.

  ## Attributes

  *   `sizes` (*type:* `list(String.t)`, *default:* `nil`) - Size of the item. Only one value is allowed. For variants with different sizes, insert a separate product for each size with the same `itemGroupId` value (see size definition).
  *   `identifierExists` (*type:* `boolean()`, *default:* `nil`) - False when the item does not have unique product identifiers appropriate to its category, such as GTIN, MPN, and brand. Required according to the Unique Product Identifier Rules for all target countries except for Canada.
  *   `adult` (*type:* `boolean()`, *default:* `nil`) - Should be set to true if the item is targeted towards adults.
  *   `unitPricingBaseMeasure` (*type:* `GoogleApi.Content.V21.Model.ProductUnitPricingBaseMeasure.t`, *default:* `nil`) - The preference of the denominator of the unit price.
  *   `link` (*type:* `String.t`, *default:* `nil`) - URL directly linking to your item's page on your website.
  *   `color` (*type:* `String.t`, *default:* `nil`) - Color of the item.
  *   `itemGroupId` (*type:* `String.t`, *default:* `nil`) - Shared identifier for all variants of the same product.
  *   `maxHandlingTime` (*type:* `String.t`, *default:* `nil`) - Maximal product handling time (in business days).
  *   `offerId` (*type:* `String.t`, *default:* `nil`) - Required. A unique identifier for the item. Leading and trailing whitespaces are stripped and multiple whitespaces are replaced by a single whitespace upon submission. Only valid unicode characters are accepted. See the products feed specification for details. *Note:* Content API methods that operate on products take the REST ID of the product, *not* this identifier.
  *   `productHighlights` (*type:* `list(String.t)`, *default:* `nil`) - Bullet points describing the most relevant highlights of a product.
  *   `customLabel1` (*type:* `String.t`, *default:* `nil`) - Custom label 1 for custom grouping of items in a Shopping campaign.
  *   `pattern` (*type:* `String.t`, *default:* `nil`) - The item's pattern (e.g. polka dots).
  *   `mpn` (*type:* `String.t`, *default:* `nil`) - Manufacturer Part Number (MPN) of the item.
  *   `includedDestinations` (*type:* `list(String.t)`, *default:* `nil`) - The list of destinations to include for this target (corresponds to checked check boxes in Merchant Center). Default destinations are always included unless provided in `excludedDestinations`.
  *   `shippingHeight` (*type:* `GoogleApi.Content.V21.Model.ProductShippingDimension.t`, *default:* `nil`) - Height of the item for shipping.
  *   `taxes` (*type:* `list(GoogleApi.Content.V21.Model.ProductTax.t)`, *default:* `nil`) - Tax information.
  *   `customAttributes` (*type:* `list(GoogleApi.Content.V21.Model.CustomAttribute.t)`, *default:* `nil`) - A list of custom (merchant-provided) attributes. It can also be used for submitting any attribute of the feed specification in its generic form (e.g., `{ "name": "size type", "value": "regular" }`). This is useful for submitting attributes not explicitly exposed by the API, such as additional attributes used for Buy on Google (formerly known as Shopping Actions).
  *   `gender` (*type:* `String.t`, *default:* `nil`) - Target gender of the item.
  *   `unitPricingMeasure` (*type:* `GoogleApi.Content.V21.Model.ProductUnitPricingMeasure.t`, *default:* `nil`) - The measure and dimension of an item.
  *   `adsLabels` (*type:* `list(String.t)`, *default:* `nil`) - Similar to ads_grouping, but only works on CPC.
  *   `displayAdsTitle` (*type:* `String.t`, *default:* `nil`) - Title of an item for dynamic remarketing campaigns.
  *   `shippingWidth` (*type:* `GoogleApi.Content.V21.Model.ProductShippingDimension.t`, *default:* `nil`) - Width of the item for shipping.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the item.
  *   `subscriptionCost` (*type:* `GoogleApi.Content.V21.Model.ProductSubscriptionCost.t`, *default:* `nil`) - Number of periods (months or years) and amount of payment per period for an item with an associated subscription contract.
  *   `gtin` (*type:* `String.t`, *default:* `nil`) - Global Trade Item Number (GTIN) of the item.
  *   `displayAdsId` (*type:* `String.t`, *default:* `nil`) - An identifier for an item for dynamic remarketing campaigns.
  *   `displayAdsLink` (*type:* `String.t`, *default:* `nil`) - URL directly to your item's landing page for dynamic remarketing campaigns.
  *   `loyaltyPoints` (*type:* `GoogleApi.Content.V21.Model.LoyaltyPoints.t`, *default:* `nil`) - Loyalty points that users receive after purchasing the item. Japan only.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "`content#product`"
  *   `displayAdsValue` (*type:* `float()`, *default:* `nil`) - Offer margin for dynamic remarketing campaigns.
  *   `shippingLabel` (*type:* `String.t`, *default:* `nil`) - The shipping label of the product, used to group product in account-level shipping rules.
  *   `sizeSystem` (*type:* `String.t`, *default:* `nil`) - System in which the size is specified. Recommended for apparel items.
  *   `salePrice` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - Advertised sale price of the item.
  *   `multipack` (*type:* `String.t`, *default:* `nil`) - The number of identical products in a merchant-defined multipack.
  *   `adsGrouping` (*type:* `String.t`, *default:* `nil`) - Used to group items in an arbitrary way. Only for CPA%, discouraged otherwise.
  *   `installment` (*type:* `GoogleApi.Content.V21.Model.Installment.t`, *default:* `nil`) - Number and amount of installments to pay for an item.
  *   `additionalSizeType` (*type:* `String.t`, *default:* `nil`) - Additional cut of the item. Used together with size_type to represent combined size types for apparel items.
  *   `costOfGoodsSold` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - Cost of goods sold. Used for gross profit reporting.
  *   `adsRedirect` (*type:* `String.t`, *default:* `nil`) - Allows advertisers to override the item URL when the product is shown within the context of Product Ads.
  *   `shipping` (*type:* `list(GoogleApi.Content.V21.Model.ProductShipping.t)`, *default:* `nil`) - Shipping rules.
  *   `productTypes` (*type:* `list(String.t)`, *default:* `nil`) - Categories of the item (formatted as in products data specification).
  *   `additionalImageLinks` (*type:* `list(String.t)`, *default:* `nil`) - Additional URLs of images of the item.
  *   `transitTimeLabel` (*type:* `String.t`, *default:* `nil`) - The transit time label of the product, used to group product in account-level transit time tables.
  *   `sizeType` (*type:* `String.t`, *default:* `nil`) - The cut of the item. Recommended for apparel items.
  *   `mobileLink` (*type:* `String.t`, *default:* `nil`) - URL for the mobile-optimized version of your item's landing page.
  *   `excludedDestinations` (*type:* `list(String.t)`, *default:* `nil`) - The list of destinations to exclude for this target (corresponds to unchecked check boxes in Merchant Center).
  *   `isBundle` (*type:* `boolean()`, *default:* `nil`) - Whether the item is a merchant-defined bundle. A bundle is a custom grouping of different products sold by a merchant for a single price.
  *   `taxCategory` (*type:* `String.t`, *default:* `nil`) - The tax category of the product, used to configure detailed tax nexus in account-level tax settings.
  *   `googleProductCategory` (*type:* `String.t`, *default:* `nil`) - Google's category of the item (see [Google product taxonomy](https://support.google.com/merchants/answer/1705911)). When querying products, this field will contain the user provided value. There is currently no way to get back the auto assigned google product categories through the API.
  *   `material` (*type:* `String.t`, *default:* `nil`) - The material of which the item is made.
  *   `condition` (*type:* `String.t`, *default:* `nil`) - Condition or state of the item.
  *   `expirationDate` (*type:* `String.t`, *default:* `nil`) - Date on which the item should expire, as specified upon insertion, in ISO 8601 format. The actual expiration date in Google Shopping is exposed in `productstatuses` as `googleExpirationDate` and might be earlier if `expirationDate` is too far in the future.
  *   `salePriceEffectiveDate` (*type:* `String.t`, *default:* `nil`) - Date range during which the item is on sale (see products data specification ).
  *   `brand` (*type:* `String.t`, *default:* `nil`) - Brand of the item.
  *   `customLabel4` (*type:* `String.t`, *default:* `nil`) - Custom label 4 for custom grouping of items in a Shopping campaign.
  *   `minHandlingTime` (*type:* `String.t`, *default:* `nil`) - Minimal product handling time (in business days).
  *   `channel` (*type:* `String.t`, *default:* `nil`) - Required. The item's channel (online or local). Acceptable values are: - "`local`" - "`online`" 
  *   `price` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - Price of the item.
  *   `minEnergyEfficiencyClass` (*type:* `String.t`, *default:* `nil`) - The energy efficiency class as defined in EU directive 2010/30/EU.
  *   `imageLink` (*type:* `String.t`, *default:* `nil`) - URL of an image of the item.
  *   `ageGroup` (*type:* `String.t`, *default:* `nil`) - Target age group of the item.
  *   `customLabel0` (*type:* `String.t`, *default:* `nil`) - Custom label 0 for custom grouping of items in a Shopping campaign.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The REST ID of the product. Content API methods that operate on products take this as their `productId` parameter. The REST ID for a product is of the form channel:contentLanguage: targetCountry: offerId.
  *   `shippingLength` (*type:* `GoogleApi.Content.V21.Model.ProductShippingDimension.t`, *default:* `nil`) - Length of the item for shipping.
  *   `shippingWeight` (*type:* `GoogleApi.Content.V21.Model.ProductShippingWeight.t`, *default:* `nil`) - Weight of the item for shipping.
  *   `shoppingAdsExcludedCountries` (*type:* `list(String.t)`, *default:* `nil`) - List of country codes (ISO 3166-1 alpha-2) to exclude the offer from Shopping Ads destination. Countries from this list are removed from countries configured in MC feed settings.
  *   `displayAdsSimilarIds` (*type:* `list(String.t)`, *default:* `nil`) - Advertiser-specified recommendations.
  *   `customLabel2` (*type:* `String.t`, *default:* `nil`) - Custom label 2 for custom grouping of items in a Shopping campaign.
  *   `sellOnGoogleQuantity` (*type:* `String.t`, *default:* `nil`) - The quantity of the product that is available for selling on Google. Supported only for online products.
  *   `contentLanguage` (*type:* `String.t`, *default:* `nil`) - Required. The two-letter ISO 639-1 language code for the item.
  *   `availability` (*type:* `String.t`, *default:* `nil`) - Availability status of the item.
  *   `availabilityDate` (*type:* `String.t`, *default:* `nil`) - The day a pre-ordered product becomes available for delivery, in ISO 8601 format.
  *   `productDetails` (*type:* `list(GoogleApi.Content.V21.Model.ProductProductDetail.t)`, *default:* `nil`) - Technical specification or additional product details.
  *   `canonicalLink` (*type:* `String.t`, *default:* `nil`) - URL for the canonical version of your item's landing page.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of the item.
  *   `maxEnergyEfficiencyClass` (*type:* `String.t`, *default:* `nil`) - The energy efficiency class as defined in EU directive 2010/30/EU.
  *   `customLabel3` (*type:* `String.t`, *default:* `nil`) - Custom label 3 for custom grouping of items in a Shopping campaign.
  *   `energyEfficiencyClass` (*type:* `String.t`, *default:* `nil`) - The energy efficiency class as defined in EU directive 2010/30/EU.
  *   `promotionIds` (*type:* `list(String.t)`, *default:* `nil`) - The unique ID of a promotion.
  *   `targetCountry` (*type:* `String.t`, *default:* `nil`) - Required. The CLDR territory code for the item.
  *   `source` (*type:* `String.t`, *default:* `nil`) - The source of the offer, i.e., how the offer was created. Acceptable values are: - "`api`" - "`crawl`" - "`feed`" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sizes => list(String.t()) | nil,
          :identifierExists => boolean() | nil,
          :adult => boolean() | nil,
          :unitPricingBaseMeasure =>
            GoogleApi.Content.V21.Model.ProductUnitPricingBaseMeasure.t() | nil,
          :link => String.t() | nil,
          :color => String.t() | nil,
          :itemGroupId => String.t() | nil,
          :maxHandlingTime => String.t() | nil,
          :offerId => String.t() | nil,
          :productHighlights => list(String.t()) | nil,
          :customLabel1 => String.t() | nil,
          :pattern => String.t() | nil,
          :mpn => String.t() | nil,
          :includedDestinations => list(String.t()) | nil,
          :shippingHeight => GoogleApi.Content.V21.Model.ProductShippingDimension.t() | nil,
          :taxes => list(GoogleApi.Content.V21.Model.ProductTax.t()) | nil,
          :customAttributes => list(GoogleApi.Content.V21.Model.CustomAttribute.t()) | nil,
          :gender => String.t() | nil,
          :unitPricingMeasure => GoogleApi.Content.V21.Model.ProductUnitPricingMeasure.t() | nil,
          :adsLabels => list(String.t()) | nil,
          :displayAdsTitle => String.t() | nil,
          :shippingWidth => GoogleApi.Content.V21.Model.ProductShippingDimension.t() | nil,
          :description => String.t() | nil,
          :subscriptionCost => GoogleApi.Content.V21.Model.ProductSubscriptionCost.t() | nil,
          :gtin => String.t() | nil,
          :displayAdsId => String.t() | nil,
          :displayAdsLink => String.t() | nil,
          :loyaltyPoints => GoogleApi.Content.V21.Model.LoyaltyPoints.t() | nil,
          :kind => String.t() | nil,
          :displayAdsValue => float() | nil,
          :shippingLabel => String.t() | nil,
          :sizeSystem => String.t() | nil,
          :salePrice => GoogleApi.Content.V21.Model.Price.t() | nil,
          :multipack => String.t() | nil,
          :adsGrouping => String.t() | nil,
          :installment => GoogleApi.Content.V21.Model.Installment.t() | nil,
          :additionalSizeType => String.t() | nil,
          :costOfGoodsSold => GoogleApi.Content.V21.Model.Price.t() | nil,
          :adsRedirect => String.t() | nil,
          :shipping => list(GoogleApi.Content.V21.Model.ProductShipping.t()) | nil,
          :productTypes => list(String.t()) | nil,
          :additionalImageLinks => list(String.t()) | nil,
          :transitTimeLabel => String.t() | nil,
          :sizeType => String.t() | nil,
          :mobileLink => String.t() | nil,
          :excludedDestinations => list(String.t()) | nil,
          :isBundle => boolean() | nil,
          :taxCategory => String.t() | nil,
          :googleProductCategory => String.t() | nil,
          :material => String.t() | nil,
          :condition => String.t() | nil,
          :expirationDate => String.t() | nil,
          :salePriceEffectiveDate => String.t() | nil,
          :brand => String.t() | nil,
          :customLabel4 => String.t() | nil,
          :minHandlingTime => String.t() | nil,
          :channel => String.t() | nil,
          :price => GoogleApi.Content.V21.Model.Price.t() | nil,
          :minEnergyEfficiencyClass => String.t() | nil,
          :imageLink => String.t() | nil,
          :ageGroup => String.t() | nil,
          :customLabel0 => String.t() | nil,
          :id => String.t() | nil,
          :shippingLength => GoogleApi.Content.V21.Model.ProductShippingDimension.t() | nil,
          :shippingWeight => GoogleApi.Content.V21.Model.ProductShippingWeight.t() | nil,
          :shoppingAdsExcludedCountries => list(String.t()) | nil,
          :displayAdsSimilarIds => list(String.t()) | nil,
          :customLabel2 => String.t() | nil,
          :sellOnGoogleQuantity => String.t() | nil,
          :contentLanguage => String.t() | nil,
          :availability => String.t() | nil,
          :availabilityDate => String.t() | nil,
          :productDetails => list(GoogleApi.Content.V21.Model.ProductProductDetail.t()) | nil,
          :canonicalLink => String.t() | nil,
          :title => String.t() | nil,
          :maxEnergyEfficiencyClass => String.t() | nil,
          :customLabel3 => String.t() | nil,
          :energyEfficiencyClass => String.t() | nil,
          :promotionIds => list(String.t()) | nil,
          :targetCountry => String.t() | nil,
          :source => String.t() | nil
        }

  field(:sizes, type: :list)
  field(:identifierExists)
  field(:adult)
  field(:unitPricingBaseMeasure, as: GoogleApi.Content.V21.Model.ProductUnitPricingBaseMeasure)
  field(:link)
  field(:color)
  field(:itemGroupId)
  field(:maxHandlingTime)
  field(:offerId)
  field(:productHighlights, type: :list)
  field(:customLabel1)
  field(:pattern)
  field(:mpn)
  field(:includedDestinations, type: :list)
  field(:shippingHeight, as: GoogleApi.Content.V21.Model.ProductShippingDimension)
  field(:taxes, as: GoogleApi.Content.V21.Model.ProductTax, type: :list)
  field(:customAttributes, as: GoogleApi.Content.V21.Model.CustomAttribute, type: :list)
  field(:gender)
  field(:unitPricingMeasure, as: GoogleApi.Content.V21.Model.ProductUnitPricingMeasure)
  field(:adsLabels, type: :list)
  field(:displayAdsTitle)
  field(:shippingWidth, as: GoogleApi.Content.V21.Model.ProductShippingDimension)
  field(:description)
  field(:subscriptionCost, as: GoogleApi.Content.V21.Model.ProductSubscriptionCost)
  field(:gtin)
  field(:displayAdsId)
  field(:displayAdsLink)
  field(:loyaltyPoints, as: GoogleApi.Content.V21.Model.LoyaltyPoints)
  field(:kind)
  field(:displayAdsValue)
  field(:shippingLabel)
  field(:sizeSystem)
  field(:salePrice, as: GoogleApi.Content.V21.Model.Price)
  field(:multipack)
  field(:adsGrouping)
  field(:installment, as: GoogleApi.Content.V21.Model.Installment)
  field(:additionalSizeType)
  field(:costOfGoodsSold, as: GoogleApi.Content.V21.Model.Price)
  field(:adsRedirect)
  field(:shipping, as: GoogleApi.Content.V21.Model.ProductShipping, type: :list)
  field(:productTypes, type: :list)
  field(:additionalImageLinks, type: :list)
  field(:transitTimeLabel)
  field(:sizeType)
  field(:mobileLink)
  field(:excludedDestinations, type: :list)
  field(:isBundle)
  field(:taxCategory)
  field(:googleProductCategory)
  field(:material)
  field(:condition)
  field(:expirationDate)
  field(:salePriceEffectiveDate)
  field(:brand)
  field(:customLabel4)
  field(:minHandlingTime)
  field(:channel)
  field(:price, as: GoogleApi.Content.V21.Model.Price)
  field(:minEnergyEfficiencyClass)
  field(:imageLink)
  field(:ageGroup)
  field(:customLabel0)
  field(:id)
  field(:shippingLength, as: GoogleApi.Content.V21.Model.ProductShippingDimension)
  field(:shippingWeight, as: GoogleApi.Content.V21.Model.ProductShippingWeight)
  field(:shoppingAdsExcludedCountries, type: :list)
  field(:displayAdsSimilarIds, type: :list)
  field(:customLabel2)
  field(:sellOnGoogleQuantity)
  field(:contentLanguage)
  field(:availability)
  field(:availabilityDate)
  field(:productDetails, as: GoogleApi.Content.V21.Model.ProductProductDetail, type: :list)
  field(:canonicalLink)
  field(:title)
  field(:maxEnergyEfficiencyClass)
  field(:customLabel3)
  field(:energyEfficiencyClass)
  field(:promotionIds, type: :list)
  field(:targetCountry)
  field(:source)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.Product do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.Product.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.Product do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
