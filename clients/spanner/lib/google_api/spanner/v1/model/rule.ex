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

defmodule GoogleApi.Spanner.V1.Model.Rule do
  @moduledoc """
  A rule to be applied in a Policy.

  ## Attributes

  - action (String): Required Defaults to: `null`.
    - Enum - one of [NO_ACTION, ALLOW, ALLOW_WITH_LOG, DENY, DENY_WITH_LOG, LOG]
  - conditions (List[Condition]): Additional restrictions that must be met Defaults to: `null`.
  - description (String): Human-readable description of the rule. Defaults to: `null`.
  - in (List[String]): If one or more &#39;in&#39; clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries. Defaults to: `null`.
  - logConfig (List[LogConfig]): The config returned to callers of tech.iam.IAM.CheckPolicy for any entries that match the LOG action. Defaults to: `null`.
  - notIn (List[String]): If one or more &#39;not_in&#39; clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and not_in entries is the same as for members in a Binding (see google/iam/v1/policy.proto). Defaults to: `null`.
  - permissions (List[String]): A permission is a string of form &#39;&lt;service&gt;.&lt;resource type&gt;.&lt;verb&gt;&#39; (e.g., &#39;storage.buckets.list&#39;). A value of &#39;*&#39; matches all permissions, and a verb part of &#39;*&#39; (e.g., &#39;storage.buckets.*&#39;) matches all verbs. Defaults to: `null`.
  """

  defstruct [
    :"action",
    :"conditions",
    :"description",
    :"in",
    :"logConfig",
    :"notIn",
    :"permissions"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Rule do
  import GoogleApi.Spanner.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"conditions", :list, GoogleApi.Spanner.V1.Model.Condition, options)
    |> deserialize(:"logConfig", :list, GoogleApi.Spanner.V1.Model.LogConfig, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Rule do
  def encode(value, options) do
    GoogleApi.Spanner.V1.Deserializer.serialize_non_nil(value, options)
  end
end

