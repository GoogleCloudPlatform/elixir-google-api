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

defmodule GoogleApi.Manufacturers.V1.Model.ProductDetail do
  @moduledoc """
  A product detail of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productdetail.

  ## Attributes

  - attributeName (String.t): The name of the attribute. Defaults to: `null`.
  - attributeValue (String.t): The value of the attribute. Defaults to: `null`.
  - sectionName (String.t): A short section name that can be reused between multiple product details. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeName => any(),
          :attributeValue => any(),
          :sectionName => any()
        }

  field(:attributeName)
  field(:attributeValue)
  field(:sectionName)
end

defimpl Poison.Decoder, for: GoogleApi.Manufacturers.V1.Model.ProductDetail do
  def decode(value, options) do
    GoogleApi.Manufacturers.V1.Model.ProductDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Manufacturers.V1.Model.ProductDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
