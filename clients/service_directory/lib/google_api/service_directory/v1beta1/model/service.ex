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

defmodule GoogleApi.ServiceDirectory.V1beta1.Model.Service do
  @moduledoc """
  An individual service. A service contains a name and optional metadata. A service must exist before endpoints can be added to it.

  ## Attributes

  *   `endpoints` (*type:* `list(GoogleApi.ServiceDirectory.V1beta1.Model.Endpoint.t)`, *default:* `nil`) - Output only. Endpoints associated with this service. Returned on LookupService.Resolve. Control plane clients should use RegistrationService.ListEndpoints.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Optional. Metadata for the service. This data can be consumed by service clients. Restrictions: - The entire metadata dictionary may contain up to 2000 characters, spread accoss all key-value pairs. Metadata that goes beyond any these limits will be rejected. - Valid metadata keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Metadata that fails to meet these requirements will be rejected. - The '(*.)google.com/' and '(*.)googleapis.com/' prefixes are reserved for system metadata managed by Service Directory. If the user tries to write to these keyspaces, those entries will be silently ignored by the system.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name for the service in the format 'projects/*/locations/*/namespaces/*/services/*'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endpoints => list(GoogleApi.ServiceDirectory.V1beta1.Model.Endpoint.t()),
          :metadata => map(),
          :name => String.t()
        }

  field(:endpoints, as: GoogleApi.ServiceDirectory.V1beta1.Model.Endpoint, type: :list)
  field(:metadata, type: :map)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceDirectory.V1beta1.Model.Service do
  def decode(value, options) do
    GoogleApi.ServiceDirectory.V1beta1.Model.Service.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceDirectory.V1beta1.Model.Service do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
