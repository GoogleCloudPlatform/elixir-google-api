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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1Paragraph do
  @moduledoc """
  Structural unit of text representing a number of words in certain order.

  ## Attributes

  - boundingBox (GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BoundingPoly.t): The bounding box for the paragraph.
  The vertices are in the order of top-left, top-right, bottom-right,
  bottom-left. When a rotation of the bounding box is detected the rotation
  is represented as around the top-left corner as defined when the text is
  read in the 'natural' orientation.
  For example:
  * when the text is horizontal it might look like:
     0----1
     |    |
     3----2
  * when it's rotated 180 degrees around the top-left corner it becomes:
     2----3
     |    |
     1----0
  and the vertex order will still be (0, 1, 2, 3). Defaults to `nil`.
  - confidence (number()): Confidence of the OCR results for the paragraph. Range [0, 1]. Defaults to `nil`.
  - property (GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1TextAnnotationTextProperty.t): Additional information detected for the paragraph. Defaults to `nil`.
  - words (list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1Word.t)): List of words in this paragraph. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingBox => GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BoundingPoly.t(),
          :confidence => number(),
          :property =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1TextAnnotationTextProperty.t(),
          :words => list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1Word.t())
        }

  field(:boundingBox, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BoundingPoly)
  field(:confidence)

  field(
    :property,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
  )

  field(:words, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1Word, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1Paragraph do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1Paragraph.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1Paragraph do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
