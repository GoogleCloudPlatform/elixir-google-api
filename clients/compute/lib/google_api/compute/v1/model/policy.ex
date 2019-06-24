# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.Policy do
  @moduledoc """
  Defines an Identity and Access Management (IAM) policy. It is used to specify access control policies for Cloud Platform resources.



  A `Policy` consists of a list of `bindings`. A `binding` binds a list of `members` to a `role`, where the members can be user accounts, Google groups, Google domains, and service accounts. A `role` is a named list of permissions defined by IAM.

  **JSON Example**

  { "bindings": [ { "role": "roles/owner", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-other-app@appspot.gserviceaccount.com" ] }, { "role": "roles/viewer", "members": ["user:sean@example.com"] } ] }

  **YAML Example**

  bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-other-app@appspot.gserviceaccount.com role: roles/owner - members: - user:sean@example.com role: roles/viewer



  For a description of IAM and its features, see the [IAM developer's guide](https://cloud.google.com/iam/docs).

  ## Attributes

  *   `auditConfigs` (*type:* `list(GoogleApi.Compute.V1.Model.AuditConfig.t)`, *default:* `nil`) - Specifies cloud audit logging configuration for this policy.
  *   `bindings` (*type:* `list(GoogleApi.Compute.V1.Model.Binding.t)`, *default:* `nil`) - Associates a list of `members` to a `role`. `bindings` with no members will result in an error.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy.

      If no `etag` is provided in the call to `setIamPolicy`, then the existing policy is overwritten blindly.
  *   `iamOwned` (*type:* `boolean()`, *default:* `nil`) - 
  *   `rules` (*type:* `list(GoogleApi.Compute.V1.Model.Rule.t)`, *default:* `nil`) - If more than one rule is specified, the rules are applied in the following manner: - All matching LOG rules are always applied. - If any DENY/DENY_WITH_LOG rule matches, permission is denied. Logging will be applied if one or more matching rule requires logging. - Otherwise, if any ALLOW/ALLOW_WITH_LOG rule matches, permission is granted. Logging will be applied if one or more matching rule requires logging. - Otherwise, if no rule applies, permission is denied.
  *   `version` (*type:* `integer()`, *default:* `nil`) - Deprecated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :auditConfigs => list(GoogleApi.Compute.V1.Model.AuditConfig.t()),
          :bindings => list(GoogleApi.Compute.V1.Model.Binding.t()),
          :etag => String.t(),
          :iamOwned => boolean(),
          :rules => list(GoogleApi.Compute.V1.Model.Rule.t()),
          :version => integer()
        }

  field(:auditConfigs, as: GoogleApi.Compute.V1.Model.AuditConfig, type: :list)
  field(:bindings, as: GoogleApi.Compute.V1.Model.Binding, type: :list)
  field(:etag)
  field(:iamOwned)
  field(:rules, as: GoogleApi.Compute.V1.Model.Rule, type: :list)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Policy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Policy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Policy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
