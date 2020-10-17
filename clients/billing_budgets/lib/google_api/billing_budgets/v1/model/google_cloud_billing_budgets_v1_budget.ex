# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1Budget do
  @moduledoc """
  A budget is a plan that describes what you expect to spend on Cloud projects, plus the rules to execute as spend is tracked against that plan, (for example, send an alert when 90% of the target spend is met). Currently all plans are monthly budgets so the usage period(s) tracked are implied (calendar months of usage back-to-back).

  ## Attributes

  *   `amount` (*type:* `GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1BudgetAmount.t`, *default:* `nil`) - Required. Budgeted amount.
  *   `budgetFilter` (*type:* `GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1Filter.t`, *default:* `nil`) - Optional. Filters that define which resources are used to compute the actual spend against the budget.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User data for display name in UI. The name must be less than or equal to 60 characters.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag will cause an update to overwrite other changes.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  *   `notificationsRule` (*type:* `GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1NotificationsRule.t`, *default:* `nil`) - Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  *   `thresholdRules` (*type:* `list(GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1ThresholdRule.t)`, *default:* `nil`) - Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amount =>
            GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1BudgetAmount.t(),
          :budgetFilter =>
            GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1Filter.t(),
          :displayName => String.t(),
          :etag => String.t(),
          :name => String.t(),
          :notificationsRule =>
            GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1NotificationsRule.t(),
          :thresholdRules =>
            list(GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1ThresholdRule.t())
        }

  field(:amount, as: GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1BudgetAmount)
  field(:budgetFilter, as: GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1Filter)
  field(:displayName)
  field(:etag)
  field(:name)

  field(:notificationsRule,
    as: GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1NotificationsRule
  )

  field(:thresholdRules,
    as: GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1ThresholdRule,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1Budget do
  def decode(value, options) do
    GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1Budget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1Budget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
