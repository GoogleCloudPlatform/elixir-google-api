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

defmodule GoogleApi.Slides.V1.Model.PageElementProperties do
  @moduledoc """
  Common properties for a page element.  Note: When you initially create a PageElement, the API may modify the values of both &#x60;size&#x60; and &#x60;transform&#x60;, but the visual size will be unchanged.

  ## Attributes

  - pageObjectId (String): The object ID of the page where the element is located. Defaults to: `null`.
  - size (Size): The size of the element. Defaults to: `null`.
  - transform (AffineTransform): The transform for the element. Defaults to: `null`.
  """

  defstruct [
    :"pageObjectId",
    :"size",
    :"transform"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.PageElementProperties do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"size", :struct, GoogleApi.Slides.V1.Model.Size, options)
    |> deserialize(:"transform", :struct, GoogleApi.Slides.V1.Model.AffineTransform, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.PageElementProperties do
  def encode(value, options) do
    GoogleApi.Slides.V1.Deserializer.serialize_non_nil(value, options)
  end
end

