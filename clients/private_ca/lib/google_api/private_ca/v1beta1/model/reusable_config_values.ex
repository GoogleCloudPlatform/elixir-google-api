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

defmodule GoogleApi.PrivateCA.V1beta1.Model.ReusableConfigValues do
  @moduledoc """
  A ReusableConfigValues is used to describe certain fields of an X.509 certificate, such as the key usage fields, fields specific to CA certificates, certificate policy extensions and custom extensions.

  ## Attributes

  *   `additionalExtensions` (*type:* `list(GoogleApi.PrivateCA.V1beta1.Model.X509Extension.t)`, *default:* `nil`) - Optional. Describes custom X.509 extensions.
  *   `aiaOcspServers` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  *   `caOptions` (*type:* `GoogleApi.PrivateCA.V1beta1.Model.CaOptions.t`, *default:* `nil`) - Optional. Describes options in this ReusableConfigValues that are relevant in a CA certificate.
  *   `keyUsage` (*type:* `GoogleApi.PrivateCA.V1beta1.Model.KeyUsage.t`, *default:* `nil`) - Optional. Indicates the intended use for keys that correspond to a certificate.
  *   `policyIds` (*type:* `list(GoogleApi.PrivateCA.V1beta1.Model.ObjectId.t)`, *default:* `nil`) - Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalExtensions => list(GoogleApi.PrivateCA.V1beta1.Model.X509Extension.t()),
          :aiaOcspServers => list(String.t()),
          :caOptions => GoogleApi.PrivateCA.V1beta1.Model.CaOptions.t(),
          :keyUsage => GoogleApi.PrivateCA.V1beta1.Model.KeyUsage.t(),
          :policyIds => list(GoogleApi.PrivateCA.V1beta1.Model.ObjectId.t())
        }

  field(:additionalExtensions, as: GoogleApi.PrivateCA.V1beta1.Model.X509Extension, type: :list)
  field(:aiaOcspServers, type: :list)
  field(:caOptions, as: GoogleApi.PrivateCA.V1beta1.Model.CaOptions)
  field(:keyUsage, as: GoogleApi.PrivateCA.V1beta1.Model.KeyUsage)
  field(:policyIds, as: GoogleApi.PrivateCA.V1beta1.Model.ObjectId, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.ReusableConfigValues do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.ReusableConfigValues.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.ReusableConfigValues do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
