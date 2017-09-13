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

defmodule GoogleApi.Slides.V1.Model.ShapeProperties do
  @moduledoc """
  The properties of a Shape.  If the shape is a placeholder shape as determined by the placeholder field, then these properties may be inherited from a parent placeholder shape. Determining the rendered value of the property depends on the corresponding property_state field value.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"link",
    :"outline",
    :"shadow",
    :"shapeBackgroundFill"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.ShapeProperties do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"link", :struct, GoogleApi.Slides.V1.Model.Link, options)
    |> deserialize(:"outline", :struct, GoogleApi.Slides.V1.Model.Outline, options)
    |> deserialize(:"shadow", :struct, GoogleApi.Slides.V1.Model.Shadow, options)
    |> deserialize(:"shapeBackgroundFill", :struct, GoogleApi.Slides.V1.Model.ShapeBackgroundFill, options)
  end
end

