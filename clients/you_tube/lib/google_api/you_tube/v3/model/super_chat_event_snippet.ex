# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.YouTube.V3.Model.SuperChatEventSnippet do
  @moduledoc """


  ## Attributes

  - amountMicros (String.t): The purchase amount, in micros of the purchase currency. e.g., 1 is represented as 1000000. Defaults to `nil`.
  - channelId (String.t): Channel id where the event occurred. Defaults to `nil`.
  - commentText (String.t): The text contents of the comment left by the user. Defaults to `nil`.
  - createdAt (DateTime.t): The date and time when the event occurred. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. Defaults to `nil`.
  - currency (String.t): The currency in which the purchase was made. ISO 4217. Defaults to `nil`.
  - displayString (String.t): A rendered string that displays the purchase amount and currency (e.g., "$1.00"). The string is rendered for the given language. Defaults to `nil`.
  - isSuperChatForGood (boolean()): True if this event is a Super Chat for Good purchase. Defaults to `nil`.
  - isSuperStickerEvent (boolean()): True if this event is a Super Sticker event. Defaults to `nil`.
  - messageType (integer()): The tier for the paid message, which is based on the amount of money spent to purchase the message. Defaults to `nil`.
  - nonprofit (GoogleApi.YouTube.V3.Model.Nonprofit.t): If this event is a Super Chat for Good purchase, this field will contain information about the charity the purchase is donated to. Defaults to `nil`.
  - superStickerMetadata (GoogleApi.YouTube.V3.Model.SuperStickerMetadata.t): If this event is a Super Sticker event, this field will contain metadata about the Super Sticker. Defaults to `nil`.
  - supporterDetails (GoogleApi.YouTube.V3.Model.ChannelProfileDetails.t): Details about the supporter. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amountMicros => String.t(),
          :channelId => String.t(),
          :commentText => String.t(),
          :createdAt => DateTime.t(),
          :currency => String.t(),
          :displayString => String.t(),
          :isSuperChatForGood => boolean(),
          :isSuperStickerEvent => boolean(),
          :messageType => integer(),
          :nonprofit => GoogleApi.YouTube.V3.Model.Nonprofit.t(),
          :superStickerMetadata => GoogleApi.YouTube.V3.Model.SuperStickerMetadata.t(),
          :supporterDetails => GoogleApi.YouTube.V3.Model.ChannelProfileDetails.t()
        }

  field(:amountMicros)
  field(:channelId)
  field(:commentText)
  field(:createdAt, as: DateTime)
  field(:currency)
  field(:displayString)
  field(:isSuperChatForGood)
  field(:isSuperStickerEvent)
  field(:messageType)
  field(:nonprofit, as: GoogleApi.YouTube.V3.Model.Nonprofit)
  field(:superStickerMetadata, as: GoogleApi.YouTube.V3.Model.SuperStickerMetadata)
  field(:supporterDetails, as: GoogleApi.YouTube.V3.Model.ChannelProfileDetails)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.SuperChatEventSnippet do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.SuperChatEventSnippet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.SuperChatEventSnippet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
