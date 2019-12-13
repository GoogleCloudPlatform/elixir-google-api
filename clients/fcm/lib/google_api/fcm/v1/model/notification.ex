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

defmodule GoogleApi.FCM.V1.Model.Notification do
  @moduledoc """
  Basic notification template to use across all platforms.

  ## Attributes

  *   `body` (*type:* `String.t`, *default:* `nil`) - The notification's body text.
  *   `image` (*type:* `String.t`, *default:* `nil`) - Contains the URL of an image that is going to be downloaded on the device
      and displayed in a notification.
      JPEG, PNG, BMP have full support across platforms. Animated GIF and video
      only work on iOS. WebP and HEIF have varying levels of support across
      platforms and platform versions.
      Android has 1MB image size limit.
      Quota usage and implications/costs for hosting image on Firebase Storage:
      https://firebase.google.com/pricing
  *   `title` (*type:* `String.t`, *default:* `nil`) - The notification's title.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :body => String.t(),
          :image => String.t(),
          :title => String.t()
        }

  field(:body)
  field(:image)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.FCM.V1.Model.Notification do
  def decode(value, options) do
    GoogleApi.FCM.V1.Model.Notification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FCM.V1.Model.Notification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
