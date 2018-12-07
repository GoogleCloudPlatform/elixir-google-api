# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.InterconnectAttachmentPartnerMetadata do
  @moduledoc """
  Informational metadata about Partner attachments from Partners to display to customers. These fields are propagated from PARTNER_PROVIDER attachments to their corresponding PARTNER attachments.

  ## Attributes

  - interconnectName (String.t): Plain text name of the Interconnect this attachment is connected to, as displayed in the Partner?s portal. For instance \&quot;Chicago 1\&quot;. This value may be validated to match approved Partner values. Defaults to: `null`.
  - partnerName (String.t): Plain text name of the Partner providing this attachment. This value may be validated to match approved Partner values. Defaults to: `null`.
  - portalUrl (String.t): URL of the Partner?s portal for this Attachment. Partners may customise this to be a deep-link to the specific resource on the Partner portal. This value may be validated to match approved Partner values. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :interconnectName => any(),
          :partnerName => any(),
          :portalUrl => any()
        }

  field(:interconnectName)
  field(:partnerName)
  field(:portalUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachmentPartnerMetadata do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectAttachmentPartnerMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachmentPartnerMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
