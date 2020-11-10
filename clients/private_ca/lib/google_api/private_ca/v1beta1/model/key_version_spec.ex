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

defmodule GoogleApi.PrivateCA.V1beta1.Model.KeyVersionSpec do
  @moduledoc """
  A Cloud KMS key configuration that a CertificateAuthority will use.

  ## Attributes

  *   `algorithm` (*type:* `String.t`, *default:* `nil`) - Required. The algorithm to use for creating a managed Cloud KMS key for a for a simplified experience. All managed keys will be have their ProtectionLevel as `HSM`.
  *   `cloudKmsKeyVersion` (*type:* `String.t`, *default:* `nil`) - Required. The resource name for an existing Cloud KMS CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`. This option enables full flexibility in the key's capabilities and properties.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :algorithm => String.t(),
          :cloudKmsKeyVersion => String.t()
        }

  field(:algorithm)
  field(:cloudKmsKeyVersion)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.KeyVersionSpec do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.KeyVersionSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.KeyVersionSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
