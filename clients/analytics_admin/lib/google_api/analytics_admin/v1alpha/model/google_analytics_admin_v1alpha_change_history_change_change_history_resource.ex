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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource do
  @moduledoc """
  A snapshot of a resource as before or after the result of a change in change history.

  ## Attributes

  *   `account` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount.t`, *default:* `nil`) - A snapshot of an Account resource in change history.
  *   `androidAppDataStream` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAndroidAppDataStream.t`, *default:* `nil`) - A snapshot of an AndroidAppDataStream resource in change history.
  *   `firebaseLink` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaFirebaseLink.t`, *default:* `nil`) - A snapshot of a FirebaseLink resource in change history.
  *   `googleAdsLink` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleAdsLink.t`, *default:* `nil`) - A snapshot of a GoogleAdsLink resource in change history.
  *   `iosAppDataStream` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaIosAppDataStream.t`, *default:* `nil`) - A snapshot of an IosAppDataStream resource in change history.
  *   `property` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProperty.t`, *default:* `nil`) - A snapshot of a Property resource in change history.
  *   `webDataStream` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaWebDataStream.t`, *default:* `nil`) - A snapshot of a WebDataStream resource in change history.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :account =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount.t(),
          :androidAppDataStream =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAndroidAppDataStream.t(),
          :firebaseLink =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaFirebaseLink.t(),
          :googleAdsLink =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleAdsLink.t(),
          :iosAppDataStream =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaIosAppDataStream.t(),
          :property =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProperty.t(),
          :webDataStream =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaWebDataStream.t()
        }

  field(:account, as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount)

  field(:androidAppDataStream,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAndroidAppDataStream
  )

  field(:firebaseLink,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaFirebaseLink
  )

  field(:googleAdsLink,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleAdsLink
  )

  field(:iosAppDataStream,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaIosAppDataStream
  )

  field(:property, as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProperty)

  field(:webDataStream,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaWebDataStream
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
