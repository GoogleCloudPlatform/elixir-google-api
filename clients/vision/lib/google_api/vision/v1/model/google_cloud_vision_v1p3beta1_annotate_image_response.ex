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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1AnnotateImageResponse do
  @moduledoc """
  Response to an image annotation request.

  ## Attributes

  *   `context` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ImageAnnotationContext.t`, *default:* `nil`) - If present, contextual information is needed to understand where this image
      comes from.
  *   `cropHintsAnnotation` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1CropHintsAnnotation.t`, *default:* `nil`) - If present, crop hints have completed successfully.
  *   `error` (*type:* `GoogleApi.Vision.V1.Model.Status.t`, *default:* `nil`) - If set, represents the error message for the operation.
      Note that filled-in image annotations are guaranteed to be
      correct, even when `error` is set.
  *   `faceAnnotations` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1FaceAnnotation.t)`, *default:* `nil`) - If present, face detection has completed successfully.
  *   `fullTextAnnotation` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1TextAnnotation.t`, *default:* `nil`) - If present, text (OCR) detection or document (OCR) text detection has
      completed successfully.
      This annotation provides the structural hierarchy for the OCR detected
      text.
  *   `imagePropertiesAnnotation` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ImageProperties.t`, *default:* `nil`) - If present, image properties were extracted successfully.
  *   `labelAnnotations` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1EntityAnnotation.t)`, *default:* `nil`) - If present, label detection has completed successfully.
  *   `landmarkAnnotations` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1EntityAnnotation.t)`, *default:* `nil`) - If present, landmark detection has completed successfully.
  *   `localizedObjectAnnotations` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation.t)`, *default:* `nil`) - If present, localized object detection has completed successfully.
      This will be sorted descending by confidence score.
  *   `logoAnnotations` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1EntityAnnotation.t)`, *default:* `nil`) - If present, logo detection has completed successfully.
  *   `productSearchResults` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ProductSearchResults.t`, *default:* `nil`) - If present, product search has completed successfully.
  *   `safeSearchAnnotation` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1SafeSearchAnnotation.t`, *default:* `nil`) - If present, safe-search annotation has completed successfully.
  *   `textAnnotations` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1EntityAnnotation.t)`, *default:* `nil`) - If present, text (OCR) detection has completed successfully.
  *   `webDetection` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1WebDetection.t`, *default:* `nil`) - If present, web detection has completed successfully.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :context =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ImageAnnotationContext.t(),
          :cropHintsAnnotation =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1CropHintsAnnotation.t(),
          :error => GoogleApi.Vision.V1.Model.Status.t(),
          :faceAnnotations =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1FaceAnnotation.t()),
          :fullTextAnnotation =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1TextAnnotation.t(),
          :imagePropertiesAnnotation =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ImageProperties.t(),
          :labelAnnotations =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1EntityAnnotation.t()),
          :landmarkAnnotations =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1EntityAnnotation.t()),
          :localizedObjectAnnotations =>
            list(
              GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation.t()
            ),
          :logoAnnotations =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1EntityAnnotation.t()),
          :productSearchResults =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ProductSearchResults.t(),
          :safeSearchAnnotation =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1SafeSearchAnnotation.t(),
          :textAnnotations =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1EntityAnnotation.t()),
          :webDetection => GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1WebDetection.t()
        }

  field(:context, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ImageAnnotationContext)

  field(:cropHintsAnnotation,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1CropHintsAnnotation
  )

  field(:error, as: GoogleApi.Vision.V1.Model.Status)

  field(:faceAnnotations,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1FaceAnnotation,
    type: :list
  )

  field(:fullTextAnnotation,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1TextAnnotation
  )

  field(:imagePropertiesAnnotation,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ImageProperties
  )

  field(:labelAnnotations,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1EntityAnnotation,
    type: :list
  )

  field(:landmarkAnnotations,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1EntityAnnotation,
    type: :list
  )

  field(:localizedObjectAnnotations,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation,
    type: :list
  )

  field(:logoAnnotations,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1EntityAnnotation,
    type: :list
  )

  field(:productSearchResults,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ProductSearchResults
  )

  field(:safeSearchAnnotation,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1SafeSearchAnnotation
  )

  field(:textAnnotations,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1EntityAnnotation,
    type: :list
  )

  field(:webDetection, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1WebDetection)
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1AnnotateImageResponse do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1AnnotateImageResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1AnnotateImageResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
