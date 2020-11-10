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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.SigningKey do
  @moduledoc """
  This defines the format used to record keys used in the software supply chain. An in-toto link is attested using one or more keys defined in the in-toto layout. An example of this is: { "key_id": "776a00e29f3559e0141b3b096f696abc6cfb0c657ab40f441132b345b0...", "key_type": "rsa", "public_key_value": "-----BEGIN PUBLIC KEY-----\\nMIIBojANBgkqhkiG9w0B...", "key_scheme": "rsassa-pss-sha256" } The format for in-toto's key definition can be found in section 4.2 of the in-toto specification.

  ## Attributes

  *   `keyId` (*type:* `String.t`, *default:* `nil`) - key_id is an identifier for the signing key.
  *   `keyScheme` (*type:* `String.t`, *default:* `nil`) - This field contains the corresponding signature scheme. Eg: "rsassa-pss-sha256".
  *   `keyType` (*type:* `String.t`, *default:* `nil`) - This field identifies the specific signing method. Eg: "rsa", "ed25519", and "ecdsa".
  *   `publicKeyValue` (*type:* `String.t`, *default:* `nil`) - This field contains the actual public key.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :keyId => String.t(),
          :keyScheme => String.t(),
          :keyType => String.t(),
          :publicKeyValue => String.t()
        }

  field(:keyId)
  field(:keyScheme)
  field(:keyType)
  field(:publicKeyValue)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.SigningKey do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.SigningKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.SigningKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
