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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfo do
  @moduledoc """
  TLS configuration information for VirtualHosts and TargetServers.

  ## Attributes

  *   `ciphers` (*type:* `list(String.t)`, *default:* `nil`) - The SSL/TLS cipher suites to be used. Must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites
  *   `clientAuthEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Enables two-way TLS.
  *   `commonName` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfoCommonName.t`, *default:* `nil`) - The TLS Common Name of the certificate.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Required. Enables TLS. If false, neither one-way nor two-way TLS will be enabled.
  *   `ignoreValidationErrors` (*type:* `boolean()`, *default:* `nil`) - If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails.
  *   `keyAlias` (*type:* `String.t`, *default:* `nil`) - Required if `client_auth_enabled` is true. The resource ID for the alias containing the private key and cert.
  *   `keyStore` (*type:* `String.t`, *default:* `nil`) - Required if `client_auth_enabled` is true. The resource ID of the keystore. References not yet supported.
  *   `protocols` (*type:* `list(String.t)`, *default:* `nil`) - The TLS versioins to be used.
  *   `trustStore` (*type:* `String.t`, *default:* `nil`) - The resource ID of the truststore. References not yet supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ciphers => list(String.t()) | nil,
          :clientAuthEnabled => boolean() | nil,
          :commonName => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfoCommonName.t() | nil,
          :enabled => boolean() | nil,
          :ignoreValidationErrors => boolean() | nil,
          :keyAlias => String.t() | nil,
          :keyStore => String.t() | nil,
          :protocols => list(String.t()) | nil,
          :trustStore => String.t() | nil
        }

  field(:ciphers, type: :list)
  field(:clientAuthEnabled)
  field(:commonName, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfoCommonName)
  field(:enabled)
  field(:ignoreValidationErrors)
  field(:keyAlias)
  field(:keyStore)
  field(:protocols, type: :list)
  field(:trustStore)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfo do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
