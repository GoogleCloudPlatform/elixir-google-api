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

defmodule GoogleApi.Jobs.V3.Model.NumericBucketingOption do
  @moduledoc """
  Input only.

  Use this field to specify bucketing option for the histogram search response.

  ## Attributes

  *   `bucketBounds` (*type:* `list(float())`, *default:* `nil`) - Required. Two adjacent values form a histogram bucket. Values should be in
      ascending order. For example, if [5, 10, 15] are provided, four buckets are
      created: (-inf, 5), 5, 10), [10, 15), [15, inf). At most 20
      [buckets_bound is supported.
  *   `requiresMinMax` (*type:* `boolean()`, *default:* `nil`) - Optional. If set to true, the histogram result includes minimum/maximum
      value of the numeric field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketBounds => list(float()),
          :requiresMinMax => boolean()
        }

  field(:bucketBounds, type: :list)
  field(:requiresMinMax)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V3.Model.NumericBucketingOption do
  def decode(value, options) do
    GoogleApi.Jobs.V3.Model.NumericBucketingOption.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V3.Model.NumericBucketingOption do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
