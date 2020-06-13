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

defmodule GoogleApi.Books.V1.Model.Review do
  @moduledoc """


  ## Attributes

  *   `author` (*type:* `GoogleApi.Books.V1.Model.ReviewAuthor.t`, *default:* `nil`) - Author of this review.
  *   `content` (*type:* `String.t`, *default:* `nil`) - Review text.
  *   `date` (*type:* `String.t`, *default:* `nil`) - Date of this review.
  *   `fullTextUrl` (*type:* `String.t`, *default:* `nil`) - URL for the full review text, for reviews gathered from the web.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Resource type for a review.
  *   `rating` (*type:* `String.t`, *default:* `nil`) - Star rating for this review. Possible values are ONE, TWO, THREE, FOUR,
      FIVE or NOT_RATED.
  *   `source` (*type:* `GoogleApi.Books.V1.Model.ReviewSource.t`, *default:* `nil`) - Information regarding the source of this review, when the review is not
      from a Google Books user.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title for this review.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Source type for this review. Possible values are EDITORIAL, WEB_USER or
      GOOGLE_USER.
  *   `volumeId` (*type:* `String.t`, *default:* `nil`) - Volume that this review is for.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :author => GoogleApi.Books.V1.Model.ReviewAuthor.t(),
          :content => String.t(),
          :date => String.t(),
          :fullTextUrl => String.t(),
          :kind => String.t(),
          :rating => String.t(),
          :source => GoogleApi.Books.V1.Model.ReviewSource.t(),
          :title => String.t(),
          :type => String.t(),
          :volumeId => String.t()
        }

  field(:author, as: GoogleApi.Books.V1.Model.ReviewAuthor)
  field(:content)
  field(:date)
  field(:fullTextUrl)
  field(:kind)
  field(:rating)
  field(:source, as: GoogleApi.Books.V1.Model.ReviewSource)
  field(:title)
  field(:type)
  field(:volumeId)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.Review do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.Review.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.Review do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
