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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1LocalizedObjectAnnotation do
  @moduledoc """
  Set of detected objects with bounding boxes.

  ## Attributes

  *   `boundingPoly` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1BoundingPoly.t`, *default:* `nil`) - Image region to which this object belongs. This must be populated.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - The BCP-47 language code, such as "en-US" or "sr-Latn". For more
      information, see
      http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  *   `mid` (*type:* `String.t`, *default:* `nil`) - Object ID that should align with EntityAnnotation mid.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Object name, expressed in its `language_code` language.
  *   `score` (*type:* `number()`, *default:* `nil`) - Score of the result. Range [0, 1].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingPoly => GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1BoundingPoly.t(),
          :languageCode => String.t(),
          :mid => String.t(),
          :name => String.t(),
          :score => number()
        }

  field(:boundingPoly, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1BoundingPoly)
  field(:languageCode)
  field(:mid)
  field(:name)
  field(:score)
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1LocalizedObjectAnnotation do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1LocalizedObjectAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1LocalizedObjectAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
