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

defmodule GoogleApi.Slides.V1.Model.CreateImageRequest do
  @moduledoc """
  Creates an image.

  ## Attributes

  - elementProperties (GoogleApi.Slides.V1.Model.PageElementProperties.t): The element properties for the image.

  When the aspect ratio of the provided size does not match the image aspect
  ratio, the image is scaled and centered with respect to the size in order
  to maintain aspect ratio. The provided transform is applied after this
  operation.

  The PageElementProperties.size property is
  optional. If you don't specify the size, the default size of the image is
  used.

  The PageElementProperties.transform property is
  optional. If you don't specify a transform, the image will be placed at the
  top left corner of the page. Defaults to `nil`.
  - objectId (String.t): A user-supplied object ID.

  If you specify an ID, it must be unique among all pages and page elements
  in the presentation. The ID must start with an alphanumeric character or an
  underscore (matches regex `[a-zA-Z0-9_]`); remaining characters
  may include those as well as a hyphen or colon (matches regex
  `[a-zA-Z0-9_-:]`).
  The length of the ID must not be less than 5 or greater than 50.

  If you don't specify an ID, a unique one is generated. Defaults to `nil`.
  - url (String.t): The image URL.

  The image is fetched once at insertion time and a copy is stored for
  display inside the presentation. Images must be less than 50MB in size,
  cannot exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF
  format.

  The provided URL can be at most 2 kB in length. The URL itself is saved
  with the image, and exposed via the Image.source_url field. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :elementProperties => GoogleApi.Slides.V1.Model.PageElementProperties.t(),
          :objectId => String.t(),
          :url => String.t()
        }

  field(:elementProperties, as: GoogleApi.Slides.V1.Model.PageElementProperties)
  field(:objectId)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.CreateImageRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.CreateImageRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.CreateImageRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
