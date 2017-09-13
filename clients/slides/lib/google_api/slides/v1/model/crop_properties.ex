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

defmodule GoogleApi.Slides.V1.Model.CropProperties do
  @moduledoc """
  The crop properties of an object enclosed in a container. For example, an Image.  The crop properties is represented by the offsets of four edges which define a crop rectangle. The offsets are measured in percentage from the corresponding edges of the object&#39;s original bounding rectangle towards inside, relative to the object&#39;s original dimensions.  - If the offset is in the interval (0, 1), the corresponding edge of crop rectangle is positioned inside of the object&#39;s original bounding rectangle. - If the offset is negative or greater than 1, the corresponding edge of crop rectangle is positioned outside of the object&#39;s original bounding rectangle. - If the left edge of the crop rectangle is on the right side of its right edge, the object will be flipped horizontally. - If the top edge of the crop rectangle is below its bottom edge, the object will be flipped vertically. - If all offsets and rotation angle is 0, the object is not cropped.  After cropping, the content in the crop rectangle will be stretched to fit its container.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"angle",
    :"bottomOffset",
    :"leftOffset",
    :"rightOffset",
    :"topOffset"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.CropProperties do
  def decode(value, _options) do
    value
  end
end

