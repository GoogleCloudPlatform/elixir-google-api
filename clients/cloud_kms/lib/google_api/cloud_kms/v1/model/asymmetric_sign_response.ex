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

defmodule GoogleApi.CloudKMS.V1.Model.AsymmetricSignResponse do
  @moduledoc """
  Response message for KeyManagementService.AsymmetricSign.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the CryptoKeyVersion used for signing. Check
      this field to verify that the intended resource was used for signing.

      NOTE: This field is in Beta.
  *   `signature` (*type:* `String.t`, *default:* `nil`) - The created signature.
  *   `signatureCrc32c` (*type:* `String.t`, *default:* `nil`) - Integrity verification field. A CRC32C checksum of the returned
      AsymmetricSignResponse.signature. An integrity check of
      AsymmetricSignResponse.signature can be performed by computing the
      CRC32C checksum of AsymmetricSignResponse.signature and comparing your
      results to this field. Discard the response in case of non-matching
      checksum values, and perform a limited number of retries. A persistent
      mismatch may indicate an issue in your computation of the CRC32C checksum.
      Note: This field is defined as int64 for reasons of compatibility across
      different languages. However, it is a non-negative integer, which will
      never exceed 2^32-1, and can be safely downconverted to uint32 in languages
      that support this type.

      NOTE: This field is in Beta.
  *   `verifiedDigestCrc32c` (*type:* `boolean()`, *default:* `nil`) - Integrity verification field. A flag indicating whether
      AsymmetricSignRequest.digest_crc32c was received by
      KeyManagementService and used for the integrity verification of the
      digest. A false value of this field
      indicates either that AsymmetricSignRequest.digest_crc32c was left
      unset or that it was not delivered to KeyManagementService. If you've
      set AsymmetricSignRequest.digest_crc32c but this field is still false,
      discard the response and perform a limited number of retries.

      NOTE: This field is in Beta.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :signature => String.t(),
          :signatureCrc32c => String.t(),
          :verifiedDigestCrc32c => boolean()
        }

  field(:name)
  field(:signature)
  field(:signatureCrc32c)
  field(:verifiedDigestCrc32c)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.AsymmetricSignResponse do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.AsymmetricSignResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.AsymmetricSignResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
