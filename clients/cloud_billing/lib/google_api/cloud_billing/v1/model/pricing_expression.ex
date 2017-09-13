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

defmodule GoogleApi.CloudBilling.V1.Model.PricingExpression do
  @moduledoc """
  Expresses a mathematical pricing formula. For Example:-  &#x60;usage_unit: GBy&#x60; &#x60;tiered_rates:&#x60;    &#x60;[start_usage_amount: 20, unit_price: $10]&#x60;    &#x60;[start_usage_amount: 100, unit_price: $5]&#x60;  The above expresses a pricing formula where the first 20GB is free, the next 80GB is priced at $10 per GB followed by $5 per GB for additional usage.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"baseUnit",
    :"baseUnitConversionFactor",
    :"baseUnitDescription",
    :"displayQuantity",
    :"tieredRates",
    :"usageUnit",
    :"usageUnitDescription"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CloudBilling.V1.Model.PricingExpression do
  import GoogleApi.CloudBilling.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"tieredRates", :list, GoogleApi.CloudBilling.V1.Model.TierRate, options)
  end
end

