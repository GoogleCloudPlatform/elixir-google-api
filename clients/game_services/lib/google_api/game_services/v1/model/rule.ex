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

defmodule GoogleApi.GameServices.V1.Model.Rule do
  @moduledoc """
  A rule to be applied in a Policy.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Required
  *   `conditions` (*type:* `list(GoogleApi.GameServices.V1.Model.Condition.t)`, *default:* `nil`) - Additional restrictions that must be met. All conditions must pass for the rule to match.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Human-readable description of the rule.
  *   `in` (*type:* `list(String.t)`, *default:* `nil`) - If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  *   `logConfig` (*type:* `list(GoogleApi.GameServices.V1.Model.LogConfig.t)`, *default:* `nil`) - The config returned to callers of tech.iam.IAM.CheckPolicy for any entries that match the LOG action.
  *   `notIn` (*type:* `list(String.t)`, *default:* `nil`) - If one or more 'not_in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and not_in entries can be found at in the Local IAM documentation (see go/local-iam#features).
  *   `permissions` (*type:* `list(String.t)`, *default:* `nil`) - A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :conditions => list(GoogleApi.GameServices.V1.Model.Condition.t()) | nil,
          :description => String.t() | nil,
          :in => list(String.t()) | nil,
          :logConfig => list(GoogleApi.GameServices.V1.Model.LogConfig.t()) | nil,
          :notIn => list(String.t()) | nil,
          :permissions => list(String.t()) | nil
        }

  field(:action)
  field(:conditions, as: GoogleApi.GameServices.V1.Model.Condition, type: :list)
  field(:description)
  field(:in, type: :list)
  field(:logConfig, as: GoogleApi.GameServices.V1.Model.LogConfig, type: :list)
  field(:notIn, type: :list)
  field(:permissions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.GameServices.V1.Model.Rule do
  def decode(value, options) do
    GoogleApi.GameServices.V1.Model.Rule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GameServices.V1.Model.Rule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
