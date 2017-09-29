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

defmodule GoogleApi.Reseller.V1.Model.RenewalSettings do
  @moduledoc """
  JSON template for a subscription renewal settings.

  ## Attributes

  - kind (String): Identifies the resource as a subscription renewal setting. Value: subscriptions#renewalSettings Defaults to: `null`.
  - renewalType (String): Renewal settings for the annual commitment plan. For more detailed information, see renewal options in the administrator help center. When renewing a subscription, the renewalType is a required property. Defaults to: `null`.
  """

  defstruct [
    :"kind",
    :"renewalType"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Reseller.V1.Model.RenewalSettings do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Reseller.V1.Model.RenewalSettings do
  def encode(value, options) do
    GoogleApi.Reseller.V1.Deserializer.serialize_non_nil(value, options)
  end
end

