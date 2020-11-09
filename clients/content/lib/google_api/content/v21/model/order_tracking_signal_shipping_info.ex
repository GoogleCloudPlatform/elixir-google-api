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

defmodule GoogleApi.Content.V21.Model.OrderTrackingSignalShippingInfo do
  @moduledoc """
  The shipping information for the order.

  ## Attributes

  *   `actualDeliveryTime` (*type:* `GoogleApi.Content.V21.Model.DateTime.t`, *default:* `nil`) - The time when the shipment was actually delivered. Include the year and timezone string, if available. This field is required, if one of the following fields is absent: tracking_id or carrier_name.
  *   `carrierName` (*type:* `String.t`, *default:* `nil`) - The name of the shipping carrier for the delivery. This field is required if one of the following fields is absent: earliest_delivery_promise_time, latest_delivery_promise_time, and actual_delivery_time.
  *   `carrierServiceName` (*type:* `String.t`, *default:* `nil`) - The service type for fulfillment, e.g., GROUND, FIRST_CLASS, etc.
  *   `earliestDeliveryPromiseTime` (*type:* `GoogleApi.Content.V21.Model.DateTime.t`, *default:* `nil`) - The earliest delivery promised time. Include the year and timezone string, if available. This field is required, if one of the following fields is absent: tracking_id or carrier_name.
  *   `latestDeliveryPromiseTime` (*type:* `GoogleApi.Content.V21.Model.DateTime.t`, *default:* `nil`) - The latest delivery promised time. Include the year and timezone string, if available. This field is required, if one of the following fields is absent: tracking_id or carrier_name.
  *   `originPostalCode` (*type:* `String.t`, *default:* `nil`) - The origin postal code, as a continuous string without spaces or dashes, e.g. "95016".
  *   `originRegionCode` (*type:* `String.t`, *default:* `nil`) - The [CLDR territory code] (http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) for the shipping origin.
  *   `shipmentId` (*type:* `String.t`, *default:* `nil`) - Required. The shipment ID.
  *   `shippedTime` (*type:* `GoogleApi.Content.V21.Model.DateTime.t`, *default:* `nil`) - The time when the shipment was shipped. Include the year and timezone string, if available.
  *   `shippingStatus` (*type:* `String.t`, *default:* `nil`) - The status of the shipment.
  *   `trackingId` (*type:* `String.t`, *default:* `nil`) - The tracking ID of the shipment. This field is required if one of the following fields is absent: earliest_delivery_promise_time, latest_delivery_promise_time, and actual_delivery_time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actualDeliveryTime => GoogleApi.Content.V21.Model.DateTime.t(),
          :carrierName => String.t(),
          :carrierServiceName => String.t(),
          :earliestDeliveryPromiseTime => GoogleApi.Content.V21.Model.DateTime.t(),
          :latestDeliveryPromiseTime => GoogleApi.Content.V21.Model.DateTime.t(),
          :originPostalCode => String.t(),
          :originRegionCode => String.t(),
          :shipmentId => String.t(),
          :shippedTime => GoogleApi.Content.V21.Model.DateTime.t(),
          :shippingStatus => String.t(),
          :trackingId => String.t()
        }

  field(:actualDeliveryTime, as: GoogleApi.Content.V21.Model.DateTime)
  field(:carrierName)
  field(:carrierServiceName)
  field(:earliestDeliveryPromiseTime, as: GoogleApi.Content.V21.Model.DateTime)
  field(:latestDeliveryPromiseTime, as: GoogleApi.Content.V21.Model.DateTime)
  field(:originPostalCode)
  field(:originRegionCode)
  field(:shipmentId)
  field(:shippedTime, as: GoogleApi.Content.V21.Model.DateTime)
  field(:shippingStatus)
  field(:trackingId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrderTrackingSignalShippingInfo do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrderTrackingSignalShippingInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrderTrackingSignalShippingInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
