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

defmodule GoogleApi.PrivateCA.V1beta1.Model.ExtendedKeyUsageOptions do
  @moduledoc """
  KeyUsage.ExtendedKeyUsageOptions has fields that correspond to certain common OIDs that could be specified as an extended key usage value.

  ## Attributes

  *   `clientAuth` (*type:* `boolean()`, *default:* `nil`) - Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client authentication", though regularly used for non-WWW TLS.
  *   `codeSigning` (*type:* `boolean()`, *default:* `nil`) - Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of downloadable executable code client authentication".
  *   `emailProtection` (*type:* `boolean()`, *default:* `nil`) - Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email protection".
  *   `ocspSigning` (*type:* `boolean()`, *default:* `nil`) - Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP responses".
  *   `serverAuth` (*type:* `boolean()`, *default:* `nil`) - Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server authentication", though regularly used for non-WWW TLS.
  *   `timeStamping` (*type:* `boolean()`, *default:* `nil`) - Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the hash of an object to a time".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientAuth => boolean() | nil,
          :codeSigning => boolean() | nil,
          :emailProtection => boolean() | nil,
          :ocspSigning => boolean() | nil,
          :serverAuth => boolean() | nil,
          :timeStamping => boolean() | nil
        }

  field(:clientAuth)
  field(:codeSigning)
  field(:emailProtection)
  field(:ocspSigning)
  field(:serverAuth)
  field(:timeStamping)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.ExtendedKeyUsageOptions do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.ExtendedKeyUsageOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.ExtendedKeyUsageOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
