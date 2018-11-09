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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1Word do
  @moduledoc """
  A word representation.

  ## Attributes

  - boundingBox (GoogleCloudVisionV1p1beta1BoundingPoly): The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the &#39;natural&#39; orientation. For example:   * when the text is horizontal it might look like:      0----1      |    |      3----2   * when it&#39;s rotated 180 degrees around the top-left corner it becomes:      2----3      |    |      1----0   and the vertice order will still be (0, 1, 2, 3). Defaults to: `null`.
  - confidence (float()): Confidence of the OCR results for the word. Range [0, 1]. Defaults to: `null`.
  - property (GoogleCloudVisionV1p1beta1TextAnnotationTextProperty): Additional information detected for the word. Defaults to: `null`.
  - symbols ([GoogleCloudVisionV1p1beta1Symbol]): List of symbols in the word. The order of the symbols follows the natural reading order. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingBox => GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1BoundingPoly.t(),
          :confidence => any(),
          :property =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty.t(),
          :symbols => list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1Symbol.t())
        }

  field(:boundingBox, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1BoundingPoly)
  field(:confidence)

  field(
    :property,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
  )

  field(:symbols, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1Symbol, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1Word do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1Word.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1Word do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
