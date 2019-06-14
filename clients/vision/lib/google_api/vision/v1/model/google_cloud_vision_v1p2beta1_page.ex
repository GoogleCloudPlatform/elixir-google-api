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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1Page do
  @moduledoc """
  Detected page from OCR.

  ## Attributes

  - blocks (list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1Block.t)): List of blocks of text, images etc on this page. Defaults to `nil`.
  - confidence (number()): Confidence of the OCR results on the page. Range [0, 1]. Defaults to `nil`.
  - height (integer()): Page height. For PDFs the unit is points. For images (including
  TIFFs) the unit is pixels. Defaults to `nil`.
  - property (GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.t): Additional information detected on the page. Defaults to `nil`.
  - width (integer()): Page width. For PDFs the unit is points. For images (including
  TIFFs) the unit is pixels. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blocks => list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1Block.t()),
          :confidence => number(),
          :height => integer(),
          :property =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.t(),
          :width => integer()
        }

  field(:blocks, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1Block, type: :list)
  field(:confidence)
  field(:height)

  field(
    :property,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
  )

  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1Page do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1Page.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1Page do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
