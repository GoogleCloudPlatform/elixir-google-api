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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ImageAnnotationContext do
  @moduledoc """
  If an image was produced from a file (e.g. a PDF), this message gives
  information about the source of that image.

  ## Attributes

  *   `pageNumber` (*type:* `integer()`, *default:* `nil`) - If the file was a PDF or TIFF, this field gives the page number within
      the file used to produce the image.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - The URI of the file used to produce the image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pageNumber => integer(),
          :uri => String.t()
        }

  field(:pageNumber)
  field(:uri)
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ImageAnnotationContext do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ImageAnnotationContext.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1ImageAnnotationContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
