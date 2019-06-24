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

defmodule GoogleApi.Storage.V1.Model.BucketLifecycleRuleCondition do
  @moduledoc """
  The condition(s) under which the action will be taken.

  ## Attributes

  *   `age` (*type:* `integer()`, *default:* `nil`) - Age of an object (in days). This condition is satisfied when an object reaches the specified age.
  *   `createdBefore` (*type:* `Date.t`, *default:* `nil`) - A date in RFC 3339 format with only the date part (for instance, "2013-01-15"). This condition is satisfied when an object is created before midnight of the specified date in UTC.
  *   `isLive` (*type:* `boolean()`, *default:* `nil`) - Relevant only for versioned objects. If the value is true, this condition matches live objects; if the value is false, it matches archived objects.
  *   `matchesPattern` (*type:* `String.t`, *default:* `nil`) - A regular expression that satisfies the RE2 syntax. This condition is satisfied when the name of the object matches the RE2 pattern. Note: This feature is currently in the "Early Access" launch stage and is only available to a whitelisted set of users; that means that this feature may be changed in backward-incompatible ways and that it is not guaranteed to be released.
  *   `matchesStorageClass` (*type:* `list(String.t)`, *default:* `nil`) - Objects having any of the storage classes specified by this condition will be matched. Values include MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, STANDARD, and DURABLE_REDUCED_AVAILABILITY.
  *   `numNewerVersions` (*type:* `integer()`, *default:* `nil`) - Relevant only for versioned objects. If the value is N, this condition is satisfied when there are at least N versions (including the live version) newer than this version of the object.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :age => integer(),
          :createdBefore => Date.t(),
          :isLive => boolean(),
          :matchesPattern => String.t(),
          :matchesStorageClass => list(String.t()),
          :numNewerVersions => integer()
        }

  field(:age)
  field(:createdBefore, as: Date)
  field(:isLive)
  field(:matchesPattern)
  field(:matchesStorageClass, type: :list)
  field(:numNewerVersions)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.BucketLifecycleRuleCondition do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.BucketLifecycleRuleCondition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.BucketLifecycleRuleCondition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
