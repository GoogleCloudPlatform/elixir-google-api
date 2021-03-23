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

defmodule GoogleApi.DisplayVideo.V1.Model.GenerateDefaultLineItemRequest do
  @moduledoc """
  Request message for LineItemService.GenerateDefaultLineItem.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the line item. Must be UTF-8 encoded with a maximum size of 240 bytes.
  *   `insertionOrderId` (*type:* `String.t`, *default:* `nil`) - Required. The unique ID of the insertion order that the line item belongs to.
  *   `lineItemType` (*type:* `String.t`, *default:* `nil`) - Required. The type of the line item.
  *   `mobileApp` (*type:* `GoogleApi.DisplayVideo.V1.Model.MobileApp.t`, *default:* `nil`) - The mobile app promoted by the line item. This is applicable only when line_item_type is either `LINE_ITEM_TYPE_DISPLAY_MOBILE_APP_INSTALL` or `LINE_ITEM_TYPE_VIDEO_MOBILE_APP_INSTALL`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :insertionOrderId => String.t() | nil,
          :lineItemType => String.t() | nil,
          :mobileApp => GoogleApi.DisplayVideo.V1.Model.MobileApp.t() | nil
        }

  field(:displayName)
  field(:insertionOrderId)
  field(:lineItemType)
  field(:mobileApp, as: GoogleApi.DisplayVideo.V1.Model.MobileApp)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.GenerateDefaultLineItemRequest do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.GenerateDefaultLineItemRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.GenerateDefaultLineItemRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
