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

defmodule GoogleApi.DisplayVideo.V1.Model.Advertiser do
  @moduledoc """
  A single advertiser in Display & Video 360 (DV360).

  ## Attributes

  *   `adServerConfig` (*type:* `GoogleApi.DisplayVideo.V1.Model.AdvertiserAdServerConfig.t`, *default:* `nil`) - Required. Immutable. Ad server related settings of the advertiser.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the advertiser. Assigned by the system.
  *   `creativeConfig` (*type:* `GoogleApi.DisplayVideo.V1.Model.AdvertiserCreativeConfig.t`, *default:* `nil`) - Required. Creative related settings of the advertiser.
  *   `dataAccessConfig` (*type:* `GoogleApi.DisplayVideo.V1.Model.AdvertiserDataAccessConfig.t`, *default:* `nil`) - Settings that control how advertiser data may be accessed.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the advertiser.

      Must be UTF-8 encoded with a maximum size of 240 bytes.
  *   `entityStatus` (*type:* `String.t`, *default:* `nil`) - Required. Controls whether or not insertion orders and line items of the
      advertiser can spend their budgets and bid on inventory.

      * Accepted values are `ENTITY_STATUS_ACTIVE` and
      `ENTITY_STATUS_SCHEDULED_FOR_DELETION`.
      * If set to
      `ENTITY_STATUS_SCHEDULED_FOR_DELETION`, the advertiser will be deleted 30
      days from when it was first scheduled for deletion.
  *   `generalConfig` (*type:* `GoogleApi.DisplayVideo.V1.Model.AdvertiserGeneralConfig.t`, *default:* `nil`) - Required. General settings of the advertiser.
  *   `integrationDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.IntegrationDetails.t`, *default:* `nil`) - Integration details of the advertiser.
      Only integrationCode is currently
      applicable to advertiser. Other fields of IntegrationDetails are not
      supported and will be ignored if provided.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the advertiser.
  *   `partnerId` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The unique ID of the partner that the advertiser belongs to.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the advertiser was last updated. Assigned by the system.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adServerConfig => GoogleApi.DisplayVideo.V1.Model.AdvertiserAdServerConfig.t(),
          :advertiserId => String.t(),
          :creativeConfig => GoogleApi.DisplayVideo.V1.Model.AdvertiserCreativeConfig.t(),
          :dataAccessConfig => GoogleApi.DisplayVideo.V1.Model.AdvertiserDataAccessConfig.t(),
          :displayName => String.t(),
          :entityStatus => String.t(),
          :generalConfig => GoogleApi.DisplayVideo.V1.Model.AdvertiserGeneralConfig.t(),
          :integrationDetails => GoogleApi.DisplayVideo.V1.Model.IntegrationDetails.t(),
          :name => String.t(),
          :partnerId => String.t(),
          :updateTime => DateTime.t()
        }

  field(:adServerConfig, as: GoogleApi.DisplayVideo.V1.Model.AdvertiserAdServerConfig)
  field(:advertiserId)
  field(:creativeConfig, as: GoogleApi.DisplayVideo.V1.Model.AdvertiserCreativeConfig)
  field(:dataAccessConfig, as: GoogleApi.DisplayVideo.V1.Model.AdvertiserDataAccessConfig)
  field(:displayName)
  field(:entityStatus)
  field(:generalConfig, as: GoogleApi.DisplayVideo.V1.Model.AdvertiserGeneralConfig)
  field(:integrationDetails, as: GoogleApi.DisplayVideo.V1.Model.IntegrationDetails)
  field(:name)
  field(:partnerId)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.Advertiser do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.Advertiser.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.Advertiser do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
