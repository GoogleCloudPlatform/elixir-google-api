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

defmodule GoogleApi.AppEngine.V1.Model.AuthorizedCertificate do
  @moduledoc """
  An SSL certificate that a user has been authorized to administer. A user is authorized to administer any certificate that applies to one of their authorized domains.

  ## Attributes

  *   `certificateRawData` (*type:* `GoogleApi.AppEngine.V1.Model.CertificateRawData.t`, *default:* `nil`) - The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  *   `domainMappingsCount` (*type:* `integer()`, *default:* `nil`) - Aggregate count of the domain mappings with this certificate mapped. This count includes domain mappings on applications for which the user does not have VIEWER permissions.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.@OutputOnly
  *   `domainNames` (*type:* `list(String.t)`, *default:* `nil`) - Topmost applicable domains of this certificate. This certificate applies to these domains and their subdomains. Example: example.com.@OutputOnly
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when this certificate expires. To update the renewal time on this certificate, upload an SSL certificate with a different expiration time using AuthorizedCertificates.UpdateAuthorizedCertificate.@OutputOnly
  *   `id` (*type:* `String.t`, *default:* `nil`) - Relative name of the certificate. This is a unique value autogenerated on AuthorizedCertificate resource creation. Example: 12345.@OutputOnly
  *   `managedCertificate` (*type:* `GoogleApi.AppEngine.V1.Model.ManagedCertificate.t`, *default:* `nil`) - Only applicable if this certificate is managed by App Engine. Managed certificates are tied to the lifecycle of a DomainMapping and cannot be updated or deleted via the AuthorizedCertificates API. If this certificate is manually administered by the user, this field will be empty.@OutputOnly
  *   `name` (*type:* `String.t`, *default:* `nil`) - Full path to the AuthorizedCertificate resource in the API. Example: apps/myapp/authorizedCertificates/12345.@OutputOnly
  *   `visibleDomainMappings` (*type:* `list(String.t)`, *default:* `nil`) - The full paths to user visible Domain Mapping resources that have this certificate mapped. Example: apps/myapp/domainMappings/example.com.This may not represent the full list of mapped domain mappings if the user does not have VIEWER permissions on all of the applications that have this certificate mapped. See domain_mappings_count for a complete count.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.@OutputOnly
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certificateRawData => GoogleApi.AppEngine.V1.Model.CertificateRawData.t() | nil,
          :displayName => String.t() | nil,
          :domainMappingsCount => integer() | nil,
          :domainNames => list(String.t()) | nil,
          :expireTime => DateTime.t() | nil,
          :id => String.t() | nil,
          :managedCertificate => GoogleApi.AppEngine.V1.Model.ManagedCertificate.t() | nil,
          :name => String.t() | nil,
          :visibleDomainMappings => list(String.t()) | nil
        }

  field(:certificateRawData, as: GoogleApi.AppEngine.V1.Model.CertificateRawData)
  field(:displayName)
  field(:domainMappingsCount)
  field(:domainNames, type: :list)
  field(:expireTime, as: DateTime)
  field(:id)
  field(:managedCertificate, as: GoogleApi.AppEngine.V1.Model.ManagedCertificate)
  field(:name)
  field(:visibleDomainMappings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.AuthorizedCertificate do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.AuthorizedCertificate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.AuthorizedCertificate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
