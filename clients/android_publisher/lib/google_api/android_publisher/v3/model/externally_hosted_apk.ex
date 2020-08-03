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

defmodule GoogleApi.AndroidPublisher.V3.Model.ExternallyHostedApk do
  @moduledoc """
  Defines an APK available for this application that is hosted externally and not uploaded to Google Play. This function is only available to organizations using Managed Play whose application is configured to restrict distribution to the organizations.

  ## Attributes

  *   `applicationLabel` (*type:* `String.t`, *default:* `nil`) - The application label.
  *   `certificateBase64s` (*type:* `list(String.t)`, *default:* `nil`) - A certificate (or array of certificates if a certificate-chain is used) used to sign this APK, represented as a base64 encoded byte array.
  *   `externallyHostedUrl` (*type:* `String.t`, *default:* `nil`) - The URL at which the APK is hosted. This must be an https URL.
  *   `fileSha1Base64` (*type:* `String.t`, *default:* `nil`) - The sha1 checksum of this APK, represented as a base64 encoded byte array.
  *   `fileSha256Base64` (*type:* `String.t`, *default:* `nil`) - The sha256 checksum of this APK, represented as a base64 encoded byte array.
  *   `fileSize` (*type:* `String.t`, *default:* `nil`) - The file size in bytes of this APK.
  *   `iconBase64` (*type:* `String.t`, *default:* `nil`) - The icon image from the APK, as a base64 encoded byte array.
  *   `maximumSdk` (*type:* `integer()`, *default:* `nil`) - The maximum SDK supported by this APK (optional).
  *   `minimumSdk` (*type:* `integer()`, *default:* `nil`) - The minimum SDK targeted by this APK.
  *   `nativeCodes` (*type:* `list(String.t)`, *default:* `nil`) - The native code environments supported by this APK (optional).
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - The package name.
  *   `usesFeatures` (*type:* `list(String.t)`, *default:* `nil`) - The features required by this APK (optional).
  *   `usesPermissions` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.UsesPermission.t)`, *default:* `nil`) - The permissions requested by this APK.
  *   `versionCode` (*type:* `integer()`, *default:* `nil`) - The version code of this APK.
  *   `versionName` (*type:* `String.t`, *default:* `nil`) - The version name of this APK.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicationLabel => String.t(),
          :certificateBase64s => list(String.t()),
          :externallyHostedUrl => String.t(),
          :fileSha1Base64 => String.t(),
          :fileSha256Base64 => String.t(),
          :fileSize => String.t(),
          :iconBase64 => String.t(),
          :maximumSdk => integer(),
          :minimumSdk => integer(),
          :nativeCodes => list(String.t()),
          :packageName => String.t(),
          :usesFeatures => list(String.t()),
          :usesPermissions => list(GoogleApi.AndroidPublisher.V3.Model.UsesPermission.t()),
          :versionCode => integer(),
          :versionName => String.t()
        }

  field(:applicationLabel)
  field(:certificateBase64s, type: :list)
  field(:externallyHostedUrl)
  field(:fileSha1Base64)
  field(:fileSha256Base64)
  field(:fileSize)
  field(:iconBase64)
  field(:maximumSdk)
  field(:minimumSdk)
  field(:nativeCodes, type: :list)
  field(:packageName)
  field(:usesFeatures, type: :list)
  field(:usesPermissions, as: GoogleApi.AndroidPublisher.V3.Model.UsesPermission, type: :list)
  field(:versionCode)
  field(:versionName)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.ExternallyHostedApk do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.ExternallyHostedApk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.ExternallyHostedApk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
