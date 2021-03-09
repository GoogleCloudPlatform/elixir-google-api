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

defmodule GoogleApi.PrivateCA.V1beta1.Model.SubordinateConfig do
  @moduledoc """
  Describes a subordinate CA's issuers. This is either a resource path to a known issuing CertificateAuthority, or a PEM issuer certificate chain.

  ## Attributes

  *   `certificateAuthority` (*type:* `String.t`, *default:* `nil`) - Required. This can refer to a CertificateAuthority in the same project that was used to create a subordinate CertificateAuthority. This field is used for information and usability purposes only. The resource name is in the format `projects/*/locations/*/certificateAuthorities/*`.
  *   `pemIssuerChain` (*type:* `GoogleApi.PrivateCA.V1beta1.Model.SubordinateConfigChain.t`, *default:* `nil`) - Required. Contains the PEM certificate chain for the issuers of this CertificateAuthority, but not pem certificate for this CA itself.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certificateAuthority => String.t() | nil,
          :pemIssuerChain => GoogleApi.PrivateCA.V1beta1.Model.SubordinateConfigChain.t() | nil
        }

  field(:certificateAuthority)
  field(:pemIssuerChain, as: GoogleApi.PrivateCA.V1beta1.Model.SubordinateConfigChain)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.SubordinateConfig do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.SubordinateConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.SubordinateConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
