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

defmodule GoogleApi.Compute.V1.Model.SecurityPolicy do
  @moduledoc """
  A security policy is comprised of one or more rules. It can also be associated with one or more 'targets'. (== resource_for v1.securityPolicies ==) (== resource_for beta.securityPolicies ==)

  ## Attributes

  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to `nil`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to `nil`.
  - fingerprint (String.t): Specifies a fingerprint for this resource, which is essentially a hash of the metadata's contents and used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update metadata. You must always provide an up-to-date fingerprint hash in order to update or change metadata, otherwise the request will fail with error 412 conditionNotMet.

  To see the latest fingerprint, make get() request to the security policy. Defaults to `nil`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to `nil`.
  - kind (String.t): [Output only] Type of the resource. Always compute#securityPolicyfor security policies Defaults to `compute#securityPolicy`.
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to `nil`.
  - rules (list(GoogleApi.Compute.V1.Model.SecurityPolicyRule.t)): A list of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match "*"). If no rules are provided when creating a security policy, a default rule with action "allow" will be added. Defaults to `nil`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :description => String.t(),
          :fingerprint => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :rules => list(GoogleApi.Compute.V1.Model.SecurityPolicyRule.t()),
          :selfLink => String.t()
        }

  field(:creationTimestamp)
  field(:description)
  field(:fingerprint)
  field(:id)
  field(:kind)
  field(:name)
  field(:rules, as: GoogleApi.Compute.V1.Model.SecurityPolicyRule, type: :list)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SecurityPolicy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SecurityPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SecurityPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
