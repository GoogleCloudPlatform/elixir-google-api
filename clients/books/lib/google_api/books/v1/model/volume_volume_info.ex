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

defmodule GoogleApi.Books.V1.Model.VolumeVolumeInfo do
  @moduledoc """
  General volume information.

  ## Attributes

  - allowAnonLogging (boolean()): Whether anonymous logging should be allowed. Defaults to `nil`.
  - authors (list(String.t)): The names of the authors and/or editors for this volume. (In LITE projection) Defaults to `nil`.
  - averageRating (float()): The mean review rating for this volume. (min = 1.0, max = 5.0) Defaults to `nil`.
  - canonicalVolumeLink (String.t): Canonical URL for a volume. (In LITE projection.) Defaults to `nil`.
  - categories (list(String.t)): A list of subject categories, such as "Fiction", "Suspense", etc. Defaults to `nil`.
  - comicsContent (boolean()): Whether the volume has comics content. Defaults to `nil`.
  - contentVersion (String.t): An identifier for the version of the volume content (text & images). (In LITE projection) Defaults to `nil`.
  - description (String.t): A synopsis of the volume. The text of the description is formatted in HTML and includes simple formatting elements, such as b, i, and br tags. (In LITE projection.) Defaults to `nil`.
  - dimensions (GoogleApi.Books.V1.Model.VolumeVolumeInfoDimensions.t): Physical dimensions of this volume. Defaults to `nil`.
  - imageLinks (GoogleApi.Books.V1.Model.VolumeVolumeInfoImageLinks.t): A list of image links for all the sizes that are available. (In LITE projection.) Defaults to `nil`.
  - industryIdentifiers (list(GoogleApi.Books.V1.Model.VolumeVolumeInfoIndustryIdentifiers.t)): Industry standard identifiers for this volume. Defaults to `nil`.
  - infoLink (String.t): URL to view information about this volume on the Google Books site. (In LITE projection) Defaults to `nil`.
  - language (String.t): Best language for this volume (based on content). It is the two-letter ISO 639-1 code such as 'fr', 'en', etc. Defaults to `nil`.
  - mainCategory (String.t): The main category to which this volume belongs. It will be the category from the categories list returned below that has the highest weight. Defaults to `nil`.
  - maturityRating (String.t):  Defaults to `nil`.
  - pageCount (integer()): Total number of pages as per publisher metadata. Defaults to `nil`.
  - panelizationSummary (GoogleApi.Books.V1.Model.VolumeVolumeInfoPanelizationSummary.t): A top-level summary of the panelization info in this volume. Defaults to `nil`.
  - previewLink (String.t): URL to preview this volume on the Google Books site. Defaults to `nil`.
  - printType (String.t): Type of publication of this volume. Possible values are BOOK or MAGAZINE. Defaults to `nil`.
  - printedPageCount (integer()): Total number of printed pages in generated pdf representation. Defaults to `nil`.
  - publishedDate (String.t): Date of publication. (In LITE projection.) Defaults to `nil`.
  - publisher (String.t): Publisher of this volume. (In LITE projection.) Defaults to `nil`.
  - ratingsCount (integer()): The number of review ratings for this volume. Defaults to `nil`.
  - readingModes (any()): The reading modes available for this volume. Defaults to `nil`.
  - samplePageCount (integer()): Total number of sample pages as per publisher metadata. Defaults to `nil`.
  - seriesInfo (GoogleApi.Books.V1.Model.Volumeseriesinfo.t):  Defaults to `nil`.
  - subtitle (String.t): Volume subtitle. (In LITE projection.) Defaults to `nil`.
  - title (String.t): Volume title. (In LITE projection.) Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowAnonLogging => boolean(),
          :authors => list(String.t()),
          :averageRating => float(),
          :canonicalVolumeLink => String.t(),
          :categories => list(String.t()),
          :comicsContent => boolean(),
          :contentVersion => String.t(),
          :description => String.t(),
          :dimensions => GoogleApi.Books.V1.Model.VolumeVolumeInfoDimensions.t(),
          :imageLinks => GoogleApi.Books.V1.Model.VolumeVolumeInfoImageLinks.t(),
          :industryIdentifiers =>
            list(GoogleApi.Books.V1.Model.VolumeVolumeInfoIndustryIdentifiers.t()),
          :infoLink => String.t(),
          :language => String.t(),
          :mainCategory => String.t(),
          :maturityRating => String.t(),
          :pageCount => integer(),
          :panelizationSummary =>
            GoogleApi.Books.V1.Model.VolumeVolumeInfoPanelizationSummary.t(),
          :previewLink => String.t(),
          :printType => String.t(),
          :printedPageCount => integer(),
          :publishedDate => String.t(),
          :publisher => String.t(),
          :ratingsCount => integer(),
          :readingModes => any(),
          :samplePageCount => integer(),
          :seriesInfo => GoogleApi.Books.V1.Model.Volumeseriesinfo.t(),
          :subtitle => String.t(),
          :title => String.t()
        }

  field(:allowAnonLogging)
  field(:authors, type: :list)
  field(:averageRating)
  field(:canonicalVolumeLink)
  field(:categories, type: :list)
  field(:comicsContent)
  field(:contentVersion)
  field(:description)
  field(:dimensions, as: GoogleApi.Books.V1.Model.VolumeVolumeInfoDimensions)
  field(:imageLinks, as: GoogleApi.Books.V1.Model.VolumeVolumeInfoImageLinks)

  field(
    :industryIdentifiers,
    as: GoogleApi.Books.V1.Model.VolumeVolumeInfoIndustryIdentifiers,
    type: :list
  )

  field(:infoLink)
  field(:language)
  field(:mainCategory)
  field(:maturityRating)
  field(:pageCount)
  field(:panelizationSummary, as: GoogleApi.Books.V1.Model.VolumeVolumeInfoPanelizationSummary)
  field(:previewLink)
  field(:printType)
  field(:printedPageCount)
  field(:publishedDate)
  field(:publisher)
  field(:ratingsCount)
  field(:readingModes)
  field(:samplePageCount)
  field(:seriesInfo, as: GoogleApi.Books.V1.Model.Volumeseriesinfo)
  field(:subtitle)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.VolumeVolumeInfo do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.VolumeVolumeInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.VolumeVolumeInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
