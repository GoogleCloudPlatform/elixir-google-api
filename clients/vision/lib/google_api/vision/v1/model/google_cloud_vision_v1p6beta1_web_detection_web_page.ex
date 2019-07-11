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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebPage do
  @moduledoc """
  Metadata for web pages.

  ## Attributes

  *   `fullMatchingImages` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebImage.t)`, *default:* `nil`) - Fully matching images on the page.
      Can include resized copies of the query image.
  *   `pageTitle` (*type:* `String.t`, *default:* `nil`) - Title for the web page, may contain HTML markups.
  *   `partialMatchingImages` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebImage.t)`, *default:* `nil`) - Partial matching images on the page.
      Those images are similar enough to share some key-point features. For
      example an original image will likely have partial matching for its
      crops.
  *   `score` (*type:* `number()`, *default:* `nil`) - (Deprecated) Overall relevancy score for the web page.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The result web page URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fullMatchingImages =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebImage.t()),
          :pageTitle => String.t(),
          :partialMatchingImages =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebImage.t()),
          :score => number(),
          :url => String.t()
        }

  field(
    :fullMatchingImages,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebImage,
    type: :list
  )

  field(:pageTitle)

  field(
    :partialMatchingImages,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebImage,
    type: :list
  )

  field(:score)
  field(:url)
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebPage do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebPage.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebPage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
