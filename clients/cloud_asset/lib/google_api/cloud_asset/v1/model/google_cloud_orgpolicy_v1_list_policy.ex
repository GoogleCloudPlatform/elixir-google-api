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

defmodule GoogleApi.CloudAsset.V1.Model.GoogleCloudOrgpolicyV1ListPolicy do
  @moduledoc """
  Used in `policy_type` to specify how `list_policy` behaves at this
  resource.

  `ListPolicy` can define specific values and subtrees of Cloud Resource
  Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that
  are allowed or denied by setting the `allowed_values` and `denied_values`
  fields. This is achieved by using the `under:` and optional `is:` prefixes.
  The `under:` prefix is used to denote resource subtree values.
  The `is:` prefix is used to denote specific values, and is required only
  if the value contains a ":". Values prefixed with "is:" are treated the
  same as values with no prefix.
  Ancestry subtrees must be in one of the following formats:
      - "projects/<project-id>", e.g. "projects/tokyo-rain-123"
      - "folders/<folder-id>", e.g. "folders/1234"
      - "organizations/<organization-id>", e.g. "organizations/1234"
  The `supports_under` field of the associated `Constraint`  defines whether
  ancestry prefixes can be used. You can set `allowed_values` and
  `denied_values` in the same `Policy` if `all_values` is
  `ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all
  values. If `all_values` is set to either `ALLOW` or `DENY`,
  `allowed_values` and `denied_values` must be unset.

  ## Attributes

  *   `allValues` (*type:* `String.t`, *default:* `nil`) - The policy all_values state.
  *   `allowedValues` (*type:* `list(String.t)`, *default:* `nil`) - List of values allowed  at this resource. Can only be set if `all_values`
      is set to `ALL_VALUES_UNSPECIFIED`.
  *   `deniedValues` (*type:* `list(String.t)`, *default:* `nil`) - List of values denied at this resource. Can only be set if `all_values`
      is set to `ALL_VALUES_UNSPECIFIED`.
  *   `inheritFromParent` (*type:* `boolean()`, *default:* `nil`) - Determines the inheritance behavior for this `Policy`.

      By default, a `ListPolicy` set at a resource supercedes any `Policy` set
      anywhere up the resource hierarchy. However, if `inherit_from_parent` is
      set to `true`, then the values from the effective `Policy` of the parent
      resource are inherited, meaning the values set in this `Policy` are
      added to the values inherited up the hierarchy.

      Setting `Policy` hierarchies that inherit both allowed values and denied
      values isn't recommended in most circumstances to keep the configuration
      simple and understandable. However, it is possible to set a `Policy` with
      `allowed_values` set that inherits a `Policy` with `denied_values` set.
      In this case, the values that are allowed must be in `allowed_values` and
      not present in `denied_values`.

      For example, suppose you have a `Constraint`
      `constraints/serviceuser.services`, which has a `constraint_type` of
      `list_constraint`, and with `constraint_default` set to `ALLOW`.
      Suppose that at the Organization level, a `Policy` is applied that
      restricts the allowed API activations to {`E1`, `E2`}. Then, if a
      `Policy` is applied to a project below the Organization that has
      `inherit_from_parent` set to `false` and field all_values set to DENY,
      then an attempt to activate any API will be denied.

      The following examples demonstrate different possible layerings for
      `projects/bar` parented by `organizations/foo`:

      Example 1 (no inherited values):
        `organizations/foo` has a `Policy` with values:
          {allowed_values: "E1" allowed_values:"E2"}
        `projects/bar` has `inherit_from_parent` `false` and values:
          {allowed_values: "E3" allowed_values: "E4"}
      The accepted values at `organizations/foo` are `E1`, `E2`.
      The accepted values at `projects/bar` are `E3`, and `E4`.

      Example 2 (inherited values):
        `organizations/foo` has a `Policy` with values:
          {allowed_values: "E1" allowed_values:"E2"}
        `projects/bar` has a `Policy` with values:
          {value: "E3" value: "E4" inherit_from_parent: true}
      The accepted values at `organizations/foo` are `E1`, `E2`.
      The accepted values at `projects/bar` are `E1`, `E2`, `E3`, and `E4`.

      Example 3 (inheriting both allowed and denied values):
        `organizations/foo` has a `Policy` with values:
          {allowed_values: "E1" allowed_values: "E2"}
        `projects/bar` has a `Policy` with:
          {denied_values: "E1"}
      The accepted values at `organizations/foo` are `E1`, `E2`.
      The value accepted at `projects/bar` is `E2`.

      Example 4 (RestoreDefault):
        `organizations/foo` has a `Policy` with values:
          {allowed_values: "E1" allowed_values:"E2"}
        `projects/bar` has a `Policy` with values:
          {RestoreDefault: {}}
      The accepted values at `organizations/foo` are `E1`, `E2`.
      The accepted values at `projects/bar` are either all or none depending on
      the value of `constraint_default` (if `ALLOW`, all; if
      `DENY`, none).

      Example 5 (no policy inherits parent policy):
        `organizations/foo` has no `Policy` set.
        `projects/bar` has no `Policy` set.
      The accepted values at both levels are either all or none depending on
      the value of `constraint_default` (if `ALLOW`, all; if
      `DENY`, none).

      Example 6 (ListConstraint allowing all):
        `organizations/foo` has a `Policy` with values:
          {allowed_values: "E1" allowed_values: "E2"}
        `projects/bar` has a `Policy` with:
          {all: ALLOW}
      The accepted values at `organizations/foo` are `E1`, E2`.
      Any value is accepted at `projects/bar`.

      Example 7 (ListConstraint allowing none):
        `organizations/foo` has a `Policy` with values:
          {allowed_values: "E1" allowed_values: "E2"}
        `projects/bar` has a `Policy` with:
          {all: DENY}
      The accepted values at `organizations/foo` are `E1`, E2`.
      No value is accepted at `projects/bar`.

      Example 10 (allowed and denied subtrees of Resource Manager hierarchy):
      Given the following resource hierarchy
        O1->{F1, F2}; F1->{P1}; F2->{P2, P3},
        `organizations/foo` has a `Policy` with values:
          {allowed_values: "under:organizations/O1"}
        `projects/bar` has a `Policy` with:
          {allowed_values: "under:projects/P3"}
          {denied_values: "under:folders/F2"}
      The accepted values at `organizations/foo` are `organizations/O1`,
        `folders/F1`, `folders/F2`, `projects/P1`, `projects/P2`,
        `projects/P3`.
      The accepted values at `projects/bar` are `organizations/O1`,
        `folders/F1`, `projects/P1`.
  *   `suggestedValue` (*type:* `String.t`, *default:* `nil`) - Optional. The Google Cloud Console will try to default to a configuration
      that matches the value specified in this `Policy`. If `suggested_value`
      is not set, it will inherit the value specified higher in the hierarchy,
      unless `inherit_from_parent` is `false`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allValues => String.t(),
          :allowedValues => list(String.t()),
          :deniedValues => list(String.t()),
          :inheritFromParent => boolean(),
          :suggestedValue => String.t()
        }

  field(:allValues)
  field(:allowedValues, type: :list)
  field(:deniedValues, type: :list)
  field(:inheritFromParent)
  field(:suggestedValue)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.GoogleCloudOrgpolicyV1ListPolicy do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleCloudOrgpolicyV1ListPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.GoogleCloudOrgpolicyV1ListPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
