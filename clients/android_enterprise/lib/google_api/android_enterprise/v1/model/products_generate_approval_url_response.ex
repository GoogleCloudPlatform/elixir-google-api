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

defmodule GoogleApi.AndroidEnterprise.V1.Model.ProductsGenerateApprovalUrlResponse do
  @moduledoc """
  

  ## Attributes

  - url (String): A URL that can be rendered in an iframe to display the permissions (if any) of a product. This URL can be used to approve the product only once and only within 24 hours of being generated, using the Products.approve call. If the product is currently unapproved and has no permissions, this URL will point to an empty page. If the product is currently approved, a URL will only be generated if that product has added permissions since it was last approved, and the URL will only display those new permissions that have not yet been accepted. Defaults to: `null`.
  """

  defstruct [
    :"url"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductsGenerateApprovalUrlResponse do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductsGenerateApprovalUrlResponse do
  def encode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Deserializer.serialize_non_nil(value, options)
  end
end

