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

defmodule GoogleApi.AndroidEnterprise.V1.Model.GroupLicense do
  @moduledoc """
  A group license object indicates a product that an enterprise admin has approved for use in the enterprise. The product may be free or paid. For free products, a group license object is created in these cases: if the enterprise admin approves a product in Google Play, if the product is added to a collection, or if an entitlement for the product is created for a user via the API. For paid products, a group license object is only created as part of the first bulk purchase of that product in Google Play by the enterprise admin.  The API can be used to query group licenses; the available information includes the total number of licenses purchased (for paid products) and the total number of licenses that have been provisioned, that is, the total number of user entitlements in existence for the product.  Group license objects are never deleted. If, for example, a free app is added to a collection and then removed, the group license will remain, allowing the enterprise admin to keep track of any remaining entitlements. An enterprise admin may indicate they are no longer interested in the group license by marking it as unapproved in Google Play.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"acquisitionKind",
    :"approval",
    :"kind",
    :"numProvisioned",
    :"numPurchased",
    :"permissions",
    :"productId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.GroupLicense do
  def decode(value, _options) do
    value
  end
end

