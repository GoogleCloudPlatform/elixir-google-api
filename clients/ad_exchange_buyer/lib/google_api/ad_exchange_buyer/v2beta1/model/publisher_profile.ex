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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfile do
  @moduledoc """
  Note: this resource requires whitelisting for access. Please contact your
  account manager for access to Marketplace resources.

  Represents a publisher profile in Marketplace.

  All fields are read only. All string fields are free-form text entered by the
  publisher unless noted otherwise.

  ## Attributes

  - audienceDescription (String.t): Description on the publisher's audience. Defaults to `nil`.
  - buyerPitchStatement (String.t): Statement explaining what's unique about publisher's business, and why
  buyers should partner with the publisher. Defaults to `nil`.
  - directDealsContact (String.t): Contact information for direct reservation deals. This is free text entered
  by the publisher and may include information like names, phone numbers and
  email addresses. Defaults to `nil`.
  - displayName (String.t): Name of the publisher profile. Defaults to `nil`.
  - domains (list(String.t)): The list of domains represented in this publisher profile. Empty if this is
  a parent profile. These are top private domains, meaning that these will
  not contain a string like "photos.google.co.uk/123", but will instead
  contain "google.co.uk". Defaults to `nil`.
  - googlePlusUrl (String.t): URL to publisher's Google+ page. Defaults to `nil`.
  - logoUrl (String.t): A Google public URL to the logo for this publisher profile. The logo is
  stored as a PNG, JPG, or GIF image. Defaults to `nil`.
  - mediaKitUrl (String.t): URL to additional marketing and sales materials. Defaults to `nil`.
  - overview (String.t): Overview of the publisher. Defaults to `nil`.
  - programmaticDealsContact (String.t): Contact information for programmatic deals. This is free text entered by
  the publisher and may include information like names, phone numbers and
  email addresses. Defaults to `nil`.
  - publisherProfileId (String.t): Unique ID for publisher profile. Defaults to `nil`.
  - rateCardInfoUrl (String.t): URL to a publisher rate card. Defaults to `nil`.
  - samplePageUrl (String.t): URL to a sample content page. Defaults to `nil`.
  - seller (GoogleApi.AdExchangeBuyer.V2beta1.Model.Seller.t): Seller of the publisher profile. Defaults to `nil`.
  - topHeadlines (list(String.t)): Up to three key metrics and rankings. Max 100 characters each.
  For example "#1 Mobile News Site for 20 Straight Months". Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audienceDescription => String.t(),
          :buyerPitchStatement => String.t(),
          :directDealsContact => String.t(),
          :displayName => String.t(),
          :domains => list(String.t()),
          :googlePlusUrl => String.t(),
          :logoUrl => String.t(),
          :mediaKitUrl => String.t(),
          :overview => String.t(),
          :programmaticDealsContact => String.t(),
          :publisherProfileId => String.t(),
          :rateCardInfoUrl => String.t(),
          :samplePageUrl => String.t(),
          :seller => GoogleApi.AdExchangeBuyer.V2beta1.Model.Seller.t(),
          :topHeadlines => list(String.t())
        }

  field(:audienceDescription)
  field(:buyerPitchStatement)
  field(:directDealsContact)
  field(:displayName)
  field(:domains, type: :list)
  field(:googlePlusUrl)
  field(:logoUrl)
  field(:mediaKitUrl)
  field(:overview)
  field(:programmaticDealsContact)
  field(:publisherProfileId)
  field(:rateCardInfoUrl)
  field(:samplePageUrl)
  field(:seller, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Seller)
  field(:topHeadlines, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfile do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
