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

defmodule GoogleApi.Analytics.V3.Model.CustomMetric do
  @moduledoc """
  JSON template for Analytics Custom Metric.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID.
  *   `active` (*type:* `boolean()`, *default:* `nil`) - Boolean indicating whether the custom metric is active.
  *   `created` (*type:* `DateTime.t`, *default:* `nil`) - Time the custom metric was created.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Custom metric ID.
  *   `index` (*type:* `integer()`, *default:* `nil`) - Index of the custom metric.
  *   `kind` (*type:* `String.t`, *default:* `analytics#customMetric`) - Kind value for a custom metric. Set to "analytics#customMetric". It is a read-only field.
  *   `max_value` (*type:* `String.t`, *default:* `nil`) - Max value of custom metric.
  *   `min_value` (*type:* `String.t`, *default:* `nil`) - Min value of custom metric.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the custom metric.
  *   `parentLink` (*type:* `GoogleApi.Analytics.V3.Model.CustomMetricParentLink.t`, *default:* `nil`) - Parent link for the custom metric. Points to the property to which the custom metric belongs.
  *   `scope` (*type:* `String.t`, *default:* `nil`) - Scope of the custom metric: HIT or PRODUCT.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Link for the custom metric
  *   `type` (*type:* `String.t`, *default:* `nil`) - Data type of custom metric.
  *   `updated` (*type:* `DateTime.t`, *default:* `nil`) - Time the custom metric was last modified.
  *   `webPropertyId` (*type:* `String.t`, *default:* `nil`) - Property ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :active => boolean() | nil,
          :created => DateTime.t() | nil,
          :id => String.t() | nil,
          :index => integer() | nil,
          :kind => String.t() | nil,
          :max_value => String.t() | nil,
          :min_value => String.t() | nil,
          :name => String.t() | nil,
          :parentLink => GoogleApi.Analytics.V3.Model.CustomMetricParentLink.t() | nil,
          :scope => String.t() | nil,
          :selfLink => String.t() | nil,
          :type => String.t() | nil,
          :updated => DateTime.t() | nil,
          :webPropertyId => String.t() | nil
        }

  field(:accountId)
  field(:active)
  field(:created, as: DateTime)
  field(:id)
  field(:index)
  field(:kind)
  field(:max_value)
  field(:min_value)
  field(:name)
  field(:parentLink, as: GoogleApi.Analytics.V3.Model.CustomMetricParentLink)
  field(:scope)
  field(:selfLink)
  field(:type)
  field(:updated, as: DateTime)
  field(:webPropertyId)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.CustomMetric do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.CustomMetric.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.CustomMetric do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
