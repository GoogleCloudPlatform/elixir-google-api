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

defmodule GoogleApi.Slides.V1.Model.CropProperties do
  @moduledoc """
  The crop properties of an object enclosed in a container. For example, an
  Image.

  The crop properties is represented by the offsets of four edges which define
  a crop rectangle. The offsets are measured in percentage from the
  corresponding edges of the object's original bounding rectangle towards
  inside, relative to the object's original dimensions.

  - If the offset is in the interval (0, 1), the corresponding edge of crop
  rectangle is positioned inside of the object's original bounding rectangle.
  - If the offset is negative or greater than 1, the corresponding edge of crop
  rectangle is positioned outside of the object's original bounding rectangle.
  - If the left edge of the crop rectangle is on the right side of its right
  edge, the object will be flipped horizontally.
  - If the top edge of the crop rectangle is below its bottom edge, the object
  will be flipped vertically.
  - If all offsets and rotation angle is 0, the object is not cropped.

  After cropping, the content in the crop rectangle will be stretched to fit
  its container.

  ## Attributes

  *   `angle` (*type:* `number()`, *default:* `nil`) - The rotation angle of the crop window around its center, in radians.
      Rotation angle is applied after the offset.
  *   `bottomOffset` (*type:* `number()`, *default:* `nil`) - The offset specifies the bottom edge of the crop rectangle that is located
      above the original bounding rectangle bottom edge, relative to the object's
      original height.
  *   `leftOffset` (*type:* `number()`, *default:* `nil`) - The offset specifies the left edge of the crop rectangle that is located to
      the right of the original bounding rectangle left edge, relative to the
      object's original width.
  *   `rightOffset` (*type:* `number()`, *default:* `nil`) - The offset specifies the right edge of the crop rectangle that is located
      to the left of the original bounding rectangle right edge, relative to the
      object's original width.
  *   `topOffset` (*type:* `number()`, *default:* `nil`) - The offset specifies the top edge of the crop rectangle that is located
      below the original bounding rectangle top edge, relative to the object's
      original height.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :angle => number(),
          :bottomOffset => number(),
          :leftOffset => number(),
          :rightOffset => number(),
          :topOffset => number()
        }

  field(:angle)
  field(:bottomOffset)
  field(:leftOffset)
  field(:rightOffset)
  field(:topOffset)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.CropProperties do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.CropProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.CropProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
