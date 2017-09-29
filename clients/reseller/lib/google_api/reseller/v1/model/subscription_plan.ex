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

defmodule GoogleApi.Reseller.V1.Model.SubscriptionPlan do
  @moduledoc """
  The plan property is required. In this version of the API, the G Suite plans are the flexible plan, annual commitment plan, and the 30-day free trial plan. For more information about the API\&quot;s payment plans, see the API concepts.

  ## Attributes

  - commitmentInterval (SubscriptionPlanCommitmentInterval):  Defaults to: `null`.
  - isCommitmentPlan (Boolean): The isCommitmentPlan property&#39;s boolean value identifies the plan as an annual commitment plan: - true — The subscription&#39;s plan is an annual commitment plan. - false — The plan is not an annual commitment plan. Defaults to: `null`.
  - planName (String): The planName property is required. This is the name of the subscription&#39;s plan. For more information about the Google payment plans, see the API concepts.  Possible values are:   - ANNUAL_MONTHLY_PAY — The annual commitment plan with monthly payments   - ANNUAL_YEARLY_PAY — The annual commitment plan with yearly payments   - FLEXIBLE — The flexible plan   - TRIAL — The 30-day free trial plan. A subscription in trial will be suspended after the 30th free day if no payment plan is assigned. Calling changePlan will assign a payment plan to a trial but will not activate the plan. A trial will automatically begin its assigned payment plan after its 30th free day or immediately after calling startPaidService. Defaults to: `null`.
  """

  defstruct [
    :"commitmentInterval",
    :"isCommitmentPlan",
    :"planName"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Reseller.V1.Model.SubscriptionPlan do
  import GoogleApi.Reseller.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"commitmentInterval", :struct, GoogleApi.Reseller.V1.Model.SubscriptionPlanCommitmentInterval, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Reseller.V1.Model.SubscriptionPlan do
  def encode(value, options) do
    GoogleApi.Reseller.V1.Deserializer.serialize_non_nil(value, options)
  end
end

