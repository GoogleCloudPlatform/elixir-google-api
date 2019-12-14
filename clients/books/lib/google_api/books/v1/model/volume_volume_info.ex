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

defmodule GoogleApi.Books.V1.Model.VolumeVolumeInfo do
  @moduledoc """
  General volume information.

  ## Attributes

  *   `allowAnonLogging` (*type:* `boolean()`, *default:* `nil`) - Whether anonymous logging should be allowed.
  *   `authors` (*type:* `list(String.t)`, *default:* `nil`) - The names of the authors and/or editors for this volume. (In LITE projection)
  *   `averageRating` (*type:* `float()`, *default:* `nil`) - The mean review rating for this volume. (min = 1.0, max = 5.0)
  *   `canonicalVolumeLink` (*type:* `String.t`, *default:* `nil`) - Canonical URL for a volume. (In LITE projection.)
  *   `categories` (*type:* `list(String.t)`, *default:* `nil`) - A list of subject categories, such as "Fiction", "Suspense", etc.
  *   `comicsContent` (*type:* `boolean()`, *default:* `nil`) - Whether the volume has comics content.
  *   `contentVersion` (*type:* `String.t`, *default:* `nil`) - An identifier for the version of the volume content (text & images). (In LITE projection)
  *   `description` (*type:* `String.t`, *default:* `nil`) - A synopsis of the volume. The text of the description is formatted in HTML and includes simple formatting elements, such as b, i, and br tags. (In LITE projection.)
  *   `dimensions` (*type:* `GoogleApi.Books.V1.Model.VolumeVolumeInfoDimensions.t`, *default:* `nil`) - Physical dimensions of this volume.
  *   `imageLinks` (*type:* `GoogleApi.Books.V1.Model.VolumeVolumeInfoImageLinks.t`, *default:* `nil`) - A list of image links for all the sizes that are available. (In LITE projection.)
  *   `industryIdentifiers` (*type:* `list(GoogleApi.Books.V1.Model.VolumeVolumeInfoIndustryIdentifiers.t)`, *default:* `nil`) - Industry standard identifiers for this volume.
  *   `infoLink` (*type:* `String.t`, *default:* `nil`) - URL to view information about this volume on the Google Books site. (In LITE projection)
  *   `language` (*type:* `String.t`, *default:* `nil`) - Best language for this volume (based on content). It is the two-letter ISO 639-1 code such as 'fr', 'en', etc.
  *   `mainCategory` (*type:* `String.t`, *default:* `nil`) - The main category to which this volume belongs. It will be the category from the categories list returned below that has the highest weight.
  *   `maturityRating` (*type:* `String.t`, *default:* `nil`) - 
  *   `pageCount` (*type:* `integer()`, *default:* `nil`) - Total number of pages as per publisher metadata.
  *   `panelizationSummary` (*type:* `GoogleApi.Books.V1.Model.VolumeVolumeInfoPanelizationSummary.t`, *default:* `nil`) - A top-level summary of the panelization info in this volume.
  *   `previewLink` (*type:* `String.t`, *default:* `nil`) - URL to preview this volume on the Google Books site.
  *   `printType` (*type:* `String.t`, *default:* `nil`) - Type of publication of this volume. Possible values are BOOK or MAGAZINE.
  *   `printedPageCount` (*type:* `integer()`, *default:* `nil`) - Total number of printed pages in generated pdf representation.
  *   `publishedDate` (*type:* `String.t`, *default:* `nil`) - Date of publication. (In LITE projection.)
  *   `publisher` (*type:* `String.t`, *default:* `nil`) - Publisher of this volume. (In LITE projection.)
  *   `ratingsCount` (*type:* `integer()`, *default:* `nil`) - The number of review ratings for this volume.
  *   `readingModes` (*type:* `any()`, *default:* `nil`) - The reading modes available for this volume.
  *   `samplePageCount` (*type:* `integer()`, *default:* `nil`) - Total number of sample pages as per publisher metadata.
  *   `seriesInfo` (*type:* `GoogleApi.Books.V1.Model.Volumeseriesinfo.t`, *default:* `nil`) - 
  *   `subtitle` (*type:* `String.t`, *default:* `nil`) - Volume subtitle. (In LITE projection.)
  *   `title` (*type:* `String.t`, *default:* `nil`) - Volume title. (In LITE projection.)
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

  field(:industryIdentifiers,
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
