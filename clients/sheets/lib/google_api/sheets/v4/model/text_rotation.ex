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

defmodule GoogleApi.Sheets.V4.Model.TextRotation do
  @moduledoc """
  The rotation applied to text in a cell.

  ## Attributes

  - angle (Integer): The angle between the standard orientation and the desired orientation. Measured in degrees. Valid values are between -90 and 90. Positive angles are angled upwards, negative are angled downwards.  Note: For LTR text direction positive angles are in the counterclockwise direction, whereas for RTL they are in the clockwise direction Defaults to: `null`.
  - vertical (Boolean): If true, text reads top to bottom, but the orientation of individual characters is unchanged. For example:      | V |     | e |     | r |     | t |     | i |     | c |     | a |     | l | Defaults to: `null`.
  """

  defstruct [
    :"angle",
    :"vertical"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.TextRotation do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.TextRotation do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end

